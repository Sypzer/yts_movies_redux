part of movie_actions;

@freezed
class GetUsers with _$GetUsers implements AppAction {
  const factory GetUsers(List<String> uids) = GetUsersStart;

  const factory GetUsers.successful(List<AppUser> users) = GetUsersSuccessful;

  @Implements(ErrorAction)
  const factory GetUsers.error(Object error, StackTrace stackTrace) = GetUsersError;
}
