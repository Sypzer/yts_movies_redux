part of auth_models;

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  factory AuthState.initialState() {
    return _$AuthState((AuthStateBuilder b) {});
  }
  factory AuthState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  AuthState._();

  AppUser? get user;

  RegisterInfo get registerInfo;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<AuthState> get serializer => _$authStateSerializer;
}
