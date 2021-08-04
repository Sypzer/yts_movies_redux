export 'auth/index.dart';
export 'movies/index.dart';

abstract class AppAction {
  const AppAction();
}

abstract class ErrorAction extends AppAction {
  Object get error;

  StackTrace get stackTrace;
}

typedef ActionResponse = void Function(AppAction action);
