part of auth_actions;

@freezed
class LogOut with _$LogOut implements AppAction {
  const factory LogOut() = LogOutStart;

  const factory LogOut.successful() = LogOutSuccessful;

  @Implements(ErrorAction)
  const factory LogOut.error(Object error, StackTrace stackTrace) = LogOutError;
}
