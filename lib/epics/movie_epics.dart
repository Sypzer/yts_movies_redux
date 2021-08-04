import 'package:rxdart/rxdart.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:yts_movies_redux/actions/index.dart';
import 'package:yts_movies_redux/data/yts_api.dart';
import 'package:yts_movies_redux/models/app_state.dart';
import 'package:yts_movies_redux/models/auth/index.dart';
import 'package:yts_movies_redux/models/movie.dart';
import 'package:yts_movies_redux/models/review.dart';

class MovieEpics {
  const MovieEpics({required YtsApi ytsApi}) : _ytsApi = ytsApi;

  final YtsApi _ytsApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetMoviesStart>(_getMoviesStart),
      TypedEpic<AppState, CreateReviewStart>(_createReview),
      TypedEpic<AppState, GetReviewsStart>(_getReviews),
      TypedEpic<AppState, GetUsersStart>(_getUsers),
    ]);
  }

  Stream<AppAction> _getMoviesStart(Stream<GetMoviesStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetMoviesStart action) => Stream<GetMoviesStart>.value(action)
            .asyncMap((GetMoviesStart action) =>
                _ytsApi.getMovies(store.state.nextPage, store.state.genre, store.state.quality))
            .map((List<Movie> movies) => GetMovies.successful(movies))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => GetMovies.error(error, stackTrace)));
  }

  Stream<AppAction> _createReview(Stream<CreateReviewStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateReviewStart action) => Stream<CreateReviewStart>.value(action)
                .asyncMap((CreateReviewStart action) => _ytsApi.createReview(
                    uid: store.state.auth.user!.uid, movieId: store.state.selectedMovie!, text: action.text))
                .expand((_) {
              return <AppAction>[
                const CreateReview.successful(),
                const GetReviews(),
              ];
            }).onErrorReturnWith((Object error, StackTrace stackTrace) => CreateReview.error(error, stackTrace)));
  }

  Stream<AppAction> _getReviews(Stream<GetReviewsStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetReviewsStart action) => Stream<GetReviewsStart>.value(action)
                .asyncMap((_) => _ytsApi.getReviews(store.state.selectedMovie!))
                .expand((List<Review> reviews) {
              return <AppAction>[
                GetReviews.successful(reviews),
                GetUsers(reviews.map((Review review) => review.uid).toSet().toList()),
              ];
            }).onErrorReturnWith((Object error, StackTrace stackTrace) => GetReviews.error(error, stackTrace)));
  }

  Stream<AppAction> _getUsers(Stream<GetUsersStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetUsersStart action) => Stream<GetUsersStart>.value(action)
            .asyncMap((_) => _ytsApi.getUsers(action.uids))
            .map((List<AppUser> users) => GetUsers.successful(users))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => GetUsers.error(error, stackTrace)));
  }
}
