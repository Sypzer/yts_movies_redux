part of auth_actions;

@freezed
class Register with _$Register implements AppAction {
  const factory Register(ActionResponse response) = RegisterStart;

  const factory Register.successful(AppUser user) = RegisterSuccessful;

  @Implements(ErrorAction)
  const factory Register.error(Object error, StackTrace stackTrace) = RegisterError;
}
