import 'package:redux/redux.dart';
import 'package:yts_movies_redux/actions/auth/index.dart';
import 'package:yts_movies_redux/models/auth/index.dart';

Reducer<AuthState> authReducer = combineReducers(<Reducer<AuthState>>[
  TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AuthState, RegisterSuccessful>(_registerSuccessful),
  TypedReducer<AuthState, UpdateRegisterInfo>(_updateRegisterInfo),
  TypedReducer<AuthState, LogOutSuccessful>(_logOutSuccessful),
  TypedReducer<AuthState, InitializeAppSuccessful>(_initializeAppSuccessful),
]);

AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b.user = action.user.toBuilder();
  });
}

AuthState _registerSuccessful(AuthState state, RegisterSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b.user = action.user.toBuilder();
  });
}

AuthState _updateRegisterInfo(AuthState state, UpdateRegisterInfo action) {
  return state.rebuild((AuthStateBuilder b) {
    if (action.password != null) {
      b.registerInfo.password = action.password;
    } else if (action.email != null) {
      b.registerInfo.email = action.email;
    } else if (action.file != null) {
      b.registerInfo.photo = action.file;
    } else if (action.displayName != null) {
      b.registerInfo.displayName = action.displayName;
    }
  });
}

AuthState _logOutSuccessful(AuthState state, LogOutSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b.user = null;
  });
}

AuthState _initializeAppSuccessful(AuthState state, InitializeAppSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    b.user = action.user?.toBuilder();
  });
}
