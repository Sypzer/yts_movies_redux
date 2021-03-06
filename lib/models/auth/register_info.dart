part of auth_models;

abstract class RegisterInfo implements Built<RegisterInfo, RegisterInfoBuilder> {
  factory RegisterInfo([void Function(RegisterInfoBuilder b) updates]) = _$RegisterInfo;
  factory RegisterInfo.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  RegisterInfo._();

  String? get email;

  String? get displayName;

  String? get password;

  File? get photo;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<RegisterInfo> get serializer => _$registerInfoSerializer;
}
