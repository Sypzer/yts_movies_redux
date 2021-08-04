import 'package:redux/redux.dart';
import 'package:yts_movies_redux/actions/index.dart';
import 'package:yts_movies_redux/models/app_state.dart';
import 'package:yts_movies_redux/models/auth/index.dart';
import 'package:yts_movies_redux/reducer/auth_reducer.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  _reducer,
  TypedReducer<AppState, GetMoviesStart>(_getMovies),
  TypedReducer<AppState, GetMoviesSuccessful>(_getMoviesSuccessful),
  TypedReducer<AppState, GetMoviesError>(_getMoviesError),
  TypedReducer<AppState, UpdateQueryFields>(_updateQueryFields),
  TypedReducer<AppState, SetSelectedMovie$>(_setSelectedMovie),
  TypedReducer<AppState, GetReviewsSuccessful>(_getReviewsSuccessful),
  TypedReducer<AppState, GetUsersSuccessful>(_getUsersSuccessful),
]);

AppState _reducer(AppState state, dynamic action) {
  return state.rebuild((AppStateBuilder b) {
    b.auth = authReducer(state.auth, action).toBuilder();
  });
}

AppState _getMovies(AppState state, GetMovies action) {
  final AppStateBuilder builder = state.toBuilder();
  builder.isLoading = true;
  return builder.build();
}

AppState _getMoviesSuccessful(AppState state, GetMoviesSuccessful action) {
  final AppStateBuilder builder = state.toBuilder();
  if (state.mustResetMovies) {
    builder
      ..mustResetMovies = false
      ..nextPage = state.nextPage + 1
      ..isLoading = false
      ..movies.clear()
      ..movies.addAll(action.movies);
  } else {
    builder
      ..nextPage = state.nextPage + 1
      ..isLoading = false
      ..movies.addAll(action.movies);
  }
  return builder.build();
}

AppState _getMoviesError(AppState state, GetMoviesError action) {
  final AppStateBuilder builder = state.toBuilder();
  builder.isLoading = false;
  return builder.build();
}

AppState _updateQueryFields(AppState state, UpdateQueryFields action) {
  return state.rebuild((AppStateBuilder b) {
    if (action.quality != null) {
      b.mustResetMovies = true;
      b.quality = action.quality;
    } else {
      b.mustResetMovies = true;
      if (action.genre != null) {
        b.genre = action.genre;
      }
    }
  });
}

AppState _setSelectedMovie(AppState state, SetSelectedMovie$ action) {
  return state.rebuild((AppStateBuilder b) {
    b.selectedMovie = action.movieId;
  });
}

AppState _getReviewsSuccessful(AppState state, GetReviewsSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.reviews
      ..clear()
      ..addAll(action.reviews);
  });
}

AppState _getUsersSuccessful(AppState state, GetUsersSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.users.clear();

    for (final AppUser user in action.users) {
      b.users[user.uid] = user;
    }
  });
}
