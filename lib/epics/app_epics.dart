import 'package:redux_epics/redux_epics.dart';
import 'package:yts_movies_redux/data/auth_api.dart';
import 'package:yts_movies_redux/data/yts_api.dart';
import 'package:yts_movies_redux/epics/auth_epics.dart';
import 'package:yts_movies_redux/epics/movie_epics.dart';
import 'package:yts_movies_redux/models/app_state.dart';

class AppEpics {
  const AppEpics({required AuthApi authApi, required YtsApi ytsApi})
      : _authApi = authApi,
        _ytsApi = ytsApi;

  final AuthApi _authApi;

  final YtsApi _ytsApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      AuthEpics(authApi: _authApi).epics,
      MovieEpics(ytsApi: _ytsApi).epics,
    ]);
  }
}
