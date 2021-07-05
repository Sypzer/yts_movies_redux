import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';
import 'package:yts_movies_redux/actions/get_movies.dart';
import 'package:yts_movies_redux/actions/update_genre.dart';
import 'package:yts_movies_redux/actions/update_quality.dart';
import 'package:yts_movies_redux/data/yts_api.dart';
import 'package:yts_movies_redux/models/app_state.dart';
import 'package:yts_movies_redux/models/movie.dart';

class AppMiddleware {
  const AppMiddleware({@required YtsApi ytsApi})
      : assert(ytsApi != null),
        _ytsApi = ytsApi;

  final YtsApi _ytsApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, GetMovies>(_getMovies),
      TypedMiddleware<AppState,UpdateGenre>(_updateGenre),
      TypedMiddleware<AppState, UpdateQuality>(_updateQuality),
    ];
  }

  Future<void>_getMovies(
      Store<AppState> store, GetMovies action, NextDispatcher next) async {
    print(action);
    next(action);
    try {
      final List<Movie> movies = await _ytsApi.getMovies(store.state.nextPage,store.state.genre,store.state.quality);
      final GetMoviesSuccessfull successful = GetMoviesSuccessfull(movies);
      print(successful);
      store.dispatch(successful);
    } catch (err) {
      final GetMoviesError error = GetMoviesError(err);
      print(error);
      store.dispatch(error);
    }
  }


  void _updateGenre(Store<AppState> store, UpdateGenre action, NextDispatcher next) {
    next(action);
    print(action);
  }

  void _updateQuality(Store<AppState> store, UpdateQuality action, NextDispatcher next) {
    next(action);
    print(action);
  }
}
