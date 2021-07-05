import 'package:redux/redux.dart';
import 'package:yts_movies_redux/actions/get_movies.dart';
import 'package:yts_movies_redux/data/yts_api.dart';
import 'package:yts_movies_redux/models/app_state.dart';
import 'package:yts_movies_redux/models/movie.dart';

class AppMiddleware {
  const AppMiddleware({required YtsApi ytsApi}) : _ytsApi = ytsApi;

  final YtsApi _ytsApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, GetMovies>(_getMovies),
    ];
  }

  Future<void> _getMovies(Store<AppState> store, GetMovies action, NextDispatcher next) async {
    print(action);
    next(action);
    try {
      final List<Movie> movies = await _ytsApi.getMovies(store.state.nextPage, store.state.genre, store.state.quality);
      final GetMoviesSuccessful successful = GetMoviesSuccessful(movies);
      print(successful);
      store.dispatch(successful);
    } catch (err) {
      final GetMoviesError error = GetMoviesError(err);
      print(error);
      store.dispatch(error);
    }
  }
}
