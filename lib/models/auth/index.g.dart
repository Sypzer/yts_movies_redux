// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RegisterInfo> _$registerInfoSerializer = new _$RegisterInfoSerializer();
Serializer<AuthState> _$authStateSerializer = new _$AuthStateSerializer();
Serializer<AppUser> _$appUserSerializer = new _$AppUserSerializer();

class _$RegisterInfoSerializer implements StructuredSerializer<RegisterInfo> {
  @override
  final Iterable<Type> types = const [RegisterInfo, _$RegisterInfo];
  @override
  final String wireName = 'RegisterInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, RegisterInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result..add('email')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result..add('displayName')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result..add('password')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result..add('photo')..add(serializers.serialize(value, specifiedType: const FullType(File)));
    }
    return result;
  }

  @override
  RegisterInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegisterInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value, specifiedType: const FullType(File)) as File?;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthStateSerializer implements StructuredSerializer<AuthState> {
  @override
  final Iterable<Type> types = const [AuthState, _$AuthState];
  @override
  final String wireName = 'AuthState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AuthState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'registerInfo',
      serializers.serialize(object.registerInfo, specifiedType: const FullType(RegisterInfo)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result..add('user')..add(serializers.serialize(value, specifiedType: const FullType(AppUser)));
    }
    return result;
  }

  @override
  AuthState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value, specifiedType: const FullType(AppUser))! as AppUser);
          break;
        case 'registerInfo':
          result.registerInfo
              .replace(serializers.deserialize(value, specifiedType: const FullType(RegisterInfo))! as RegisterInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$AppUserSerializer implements StructuredSerializer<AppUser> {
  @override
  final Iterable<Type> types = const [AppUser, _$AppUser];
  @override
  final String wireName = 'AppUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email, specifiedType: const FullType(String)),
      'displayName',
      serializers.serialize(object.displayName, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.photoUrl;
    if (value != null) {
      result..add('photoUrl')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$RegisterInfo extends RegisterInfo {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? password;
  @override
  final File? photo;

  factory _$RegisterInfo([void Function(RegisterInfoBuilder)? updates]) =>
      (new RegisterInfoBuilder()..update(updates)).build();

  _$RegisterInfo._({this.email, this.displayName, this.password, this.photo}) : super._();

  @override
  RegisterInfo rebuild(void Function(RegisterInfoBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  RegisterInfoBuilder toBuilder() => new RegisterInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterInfo &&
        email == other.email &&
        displayName == other.displayName &&
        password == other.password &&
        photo == other.photo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, email.hashCode), displayName.hashCode), password.hashCode), photo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegisterInfo')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('password', password)
          ..add('photo', photo))
        .toString();
  }
}

class RegisterInfoBuilder implements Builder<RegisterInfo, RegisterInfoBuilder> {
  _$RegisterInfo? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  File? _photo;
  File? get photo => _$this._photo;
  set photo(File? photo) => _$this._photo = photo;

  RegisterInfoBuilder();

  RegisterInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _password = $v.password;
      _photo = $v.photo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterInfo;
  }

  @override
  void update(void Function(RegisterInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegisterInfo build() {
    final _$result =
        _$v ?? new _$RegisterInfo._(email: email, displayName: displayName, password: password, photo: photo);
    replace(_$result);
    return _$result;
  }
}

class _$AuthState extends AuthState {
  @override
  final AppUser? user;
  @override
  final RegisterInfo registerInfo;

  factory _$AuthState([void Function(AuthStateBuilder)? updates]) => (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._({this.user, required this.registerInfo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(registerInfo, 'AuthState', 'registerInfo');
  }

  @override
  AuthState rebuild(void Function(AuthStateBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => new AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState && user == other.user && registerInfo == other.registerInfo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), registerInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthState')..add('user', user)..add('registerInfo', registerInfo)).toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState? _$v;

  AppUserBuilder? _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder? user) => _$this._user = user;

  RegisterInfoBuilder? _registerInfo;
  RegisterInfoBuilder get registerInfo => _$this._registerInfo ??= new RegisterInfoBuilder();
  set registerInfo(RegisterInfoBuilder? registerInfo) => _$this._registerInfo = registerInfo;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _registerInfo = $v.registerInfo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthState;
  }

  @override
  void update(void Function(AuthStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthState build() {
    _$AuthState _$result;
    try {
      _$result = _$v ?? new _$AuthState._(user: _user?.build(), registerInfo: registerInfo.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'registerInfo';
        registerInfo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AuthState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AppUser extends AppUser {
  @override
  final String uid;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String? photoUrl;

  factory _$AppUser([void Function(AppUserBuilder)? updates]) => (new AppUserBuilder()..update(updates)).build();

  _$AppUser._({required this.uid, required this.email, required this.displayName, this.photoUrl}) : super._() {
    BuiltValueNullFieldError.checkNotNull(uid, 'AppUser', 'uid');
    BuiltValueNullFieldError.checkNotNull(email, 'AppUser', 'email');
    BuiltValueNullFieldError.checkNotNull(displayName, 'AppUser', 'displayName');
  }

  @override
  AppUser rebuild(void Function(AppUserBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AppUserBuilder toBuilder() => new AppUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppUser &&
        uid == other.uid &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, uid.hashCode), email.hashCode), displayName.hashCode), photoUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppUser')
          ..add('uid', uid)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl))
        .toString();
  }
}

class AppUserBuilder implements Builder<AppUser, AppUserBuilder> {
  _$AppUser? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  AppUserBuilder();

  AppUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppUser;
  }

  @override
  void update(void Function(AppUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppUser build() {
    final _$result = _$v ??
        new _$AppUser._(
            uid: BuiltValueNullFieldError.checkNotNull(uid, 'AppUser', 'uid'),
            email: BuiltValueNullFieldError.checkNotNull(email, 'AppUser', 'email'),
            displayName: BuiltValueNullFieldError.checkNotNull(displayName, 'AppUser', 'displayName'),
            photoUrl: photoUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
