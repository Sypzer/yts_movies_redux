import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yts_movies_redux/actions/auth/index.dart';
import 'package:yts_movies_redux/actions/index.dart';
import 'package:yts_movies_redux/data/auth_api.dart';
import 'package:yts_movies_redux/models/app_state.dart';
import 'package:yts_movies_redux/models/auth/index.dart';

class AuthEpics {
  const AuthEpics({required AuthApi authApi}) : _authApi = authApi;

  final AuthApi _authApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoginStart>(_login),
      TypedEpic<AppState, RegisterStart>(_register),
      TypedEpic<AppState, LogOutStart>(_logout),
      TypedEpic<AppState, InitializeAppStart>(_initializeAppStart),
    ]);
  }

  Stream<AppAction> _login(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((LoginStart action) => Stream<LoginStart>.value(action)
            .asyncMap((LoginStart action) => _authApi.login(email: action.email, password: action.password))
            .map((AppUser user) => Login.successful(user))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => Login.error(error, stackTrace))
            .doOnData(action.response));
  }

  Stream<AppAction> _register(Stream<RegisterStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((RegisterStart action) => Stream<RegisterStart>.value(action)
            .asyncMap((RegisterStart action) => _authApi.register(info: store.state.auth.registerInfo))
            .map((AppUser user) => Register.successful(user))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => Register.error(error, stackTrace))
            .doOnData(action.response));
  }

  Stream<AppAction> _logout(Stream<LogOutStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((LogOutStart action) => Stream<LogOutStart>.value(action)
            .asyncMap((LogOutStart action) => _authApi.logout())
            .map((_) => const LogOut.successful())
            .onErrorReturnWith((Object error, StackTrace stackTrace) => LogOut.error(error, stackTrace)));
  }

  Stream<AppAction> _initializeAppStart(Stream<InitializeAppStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((InitializeAppStart action) => Stream<InitializeAppStart>.value(action)
            .asyncMap((InitializeAppStart action) => _authApi.getCurrentUser())
            .map((AppUser? user) => InitializeApp.successful(user))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => InitializeApp.error(error, stackTrace)));
  }
}
