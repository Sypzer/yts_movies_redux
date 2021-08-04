part of movie_actions;

@freezed
class UpdateQueryFields with _$UpdateQueryFields implements AppAction {
  const factory UpdateQueryFields({String? genre, String? quality}) = UpdateQueryFields$;
}
