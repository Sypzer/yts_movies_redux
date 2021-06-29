import 'package:redux/redux.dart';
import 'package:yts_movies_redux/actions/get_movies.dart';
import 'package:yts_movies_redux/actions/update_genre.dart';
import 'package:yts_movies_redux/actions/update_quality.dart';
import 'package:yts_movies_redux/models/app_state.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetMovies>(_getMovies),
  TypedReducer<AppState, GetMoviesSuccessfull>(_getMoviesSuccessful),
  TypedReducer<AppState, GetMoviesError>(_getMoviesError),
  TypedReducer<AppState, UpdateGenre>(_updateGenre),
  TypedReducer<AppState, UpdateQuality>(_updateQuality),
]);

AppState _getMovies(AppState state, GetMovies action) {
  final AppStateBuilder builder = state.toBuilder();
  builder.isLoading = true;
  return builder.build();
}

AppState _getMoviesSuccessful(AppState state, GetMoviesSuccessfull action) {
  final AppStateBuilder builder = state.toBuilder();
  if(builder.mustResetMovies){
    builder
      ..mustResetMovies = false
      ..nextPage = builder.nextPage + 1
      ..isLoading = false;
      builder.movies.clear();
      builder.movies.addAll(action.movies);
  }else{
    builder
      ..nextPage = builder.nextPage + 1
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

AppState _updateGenre(AppState state, UpdateGenre action) {
  final AppStateBuilder builder = state.toBuilder();
  builder
    ..genre = action.genre
    ..nextPage = 1
    ..mustResetMovies = true;
  return builder.build();
}

AppState _updateQuality(AppState state, UpdateQuality action) {
  final AppStateBuilder builder = state.toBuilder();
  builder
    ..quality = action.quality
    ..nextPage = 1
    ..mustResetMovies = true;
  return builder.build();
}
