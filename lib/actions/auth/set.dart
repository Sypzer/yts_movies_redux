part of auth_actions;

@freezed
class UpdateRegisterInfo with _$UpdateRegisterInfo implements AppAction {
  const factory UpdateRegisterInfo({
    String? displayName,
    String? email,
    String? password,
    File? file,
  }) = UpdateRegisterInfo$;
}
