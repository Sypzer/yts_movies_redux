// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of movie_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateReviewTearOff {
  const _$CreateReviewTearOff();

  CreateReviewStart call(String text) {
    return CreateReviewStart(
      text,
    );
  }

  CreateReviewSuccessful successful() {
    return const CreateReviewSuccessful();
  }

  CreateReviewError error(Object error, StackTrace stackTrace) {
    return CreateReviewError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $CreateReview = _$CreateReviewTearOff();

/// @nodoc
mixin _$CreateReview {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateReviewStart value) $default, {
    required TResult Function(CreateReviewSuccessful value) successful,
    required TResult Function(CreateReviewError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateReviewStart value)? $default, {
    TResult Function(CreateReviewSuccessful value)? successful,
    TResult Function(CreateReviewError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReviewCopyWith<$Res> {
  factory $CreateReviewCopyWith(CreateReview value, $Res Function(CreateReview) then) =
      _$CreateReviewCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateReviewCopyWithImpl<$Res> implements $CreateReviewCopyWith<$Res> {
  _$CreateReviewCopyWithImpl(this._value, this._then);

  final CreateReview _value;
  // ignore: unused_field
  final $Res Function(CreateReview) _then;
}

/// @nodoc
abstract class $CreateReviewStartCopyWith<$Res> {
  factory $CreateReviewStartCopyWith(CreateReviewStart value, $Res Function(CreateReviewStart) then) =
      _$CreateReviewStartCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$CreateReviewStartCopyWithImpl<$Res> extends _$CreateReviewCopyWithImpl<$Res>
    implements $CreateReviewStartCopyWith<$Res> {
  _$CreateReviewStartCopyWithImpl(CreateReviewStart _value, $Res Function(CreateReviewStart) _then)
      : super(_value, (v) => _then(v as CreateReviewStart));

  @override
  CreateReviewStart get _value => super._value as CreateReviewStart;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(CreateReviewStart(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateReviewStart implements CreateReviewStart {
  const _$CreateReviewStart(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'CreateReview(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateReviewStart &&
            (identical(other.text, text) || const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $CreateReviewStartCopyWith<CreateReviewStart> get copyWith =>
      _$CreateReviewStartCopyWithImpl<CreateReviewStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateReviewStart value) $default, {
    required TResult Function(CreateReviewSuccessful value) successful,
    required TResult Function(CreateReviewError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateReviewStart value)? $default, {
    TResult Function(CreateReviewSuccessful value)? successful,
    TResult Function(CreateReviewError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateReviewStart implements CreateReview {
  const factory CreateReviewStart(String text) = _$CreateReviewStart;

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateReviewStartCopyWith<CreateReviewStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReviewSuccessfulCopyWith<$Res> {
  factory $CreateReviewSuccessfulCopyWith(CreateReviewSuccessful value, $Res Function(CreateReviewSuccessful) then) =
      _$CreateReviewSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateReviewSuccessfulCopyWithImpl<$Res> extends _$CreateReviewCopyWithImpl<$Res>
    implements $CreateReviewSuccessfulCopyWith<$Res> {
  _$CreateReviewSuccessfulCopyWithImpl(CreateReviewSuccessful _value, $Res Function(CreateReviewSuccessful) _then)
      : super(_value, (v) => _then(v as CreateReviewSuccessful));

  @override
  CreateReviewSuccessful get _value => super._value as CreateReviewSuccessful;
}

/// @nodoc

class _$CreateReviewSuccessful implements CreateReviewSuccessful {
  const _$CreateReviewSuccessful();

  @override
  String toString() {
    return 'CreateReview.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateReviewSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateReviewStart value) $default, {
    required TResult Function(CreateReviewSuccessful value) successful,
    required TResult Function(CreateReviewError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateReviewStart value)? $default, {
    TResult Function(CreateReviewSuccessful value)? successful,
    TResult Function(CreateReviewError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateReviewSuccessful implements CreateReview {
  const factory CreateReviewSuccessful() = _$CreateReviewSuccessful;
}

/// @nodoc
abstract class $CreateReviewErrorCopyWith<$Res> {
  factory $CreateReviewErrorCopyWith(CreateReviewError value, $Res Function(CreateReviewError) then) =
      _$CreateReviewErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$CreateReviewErrorCopyWithImpl<$Res> extends _$CreateReviewCopyWithImpl<$Res>
    implements $CreateReviewErrorCopyWith<$Res> {
  _$CreateReviewErrorCopyWithImpl(CreateReviewError _value, $Res Function(CreateReviewError) _then)
      : super(_value, (v) => _then(v as CreateReviewError));

  @override
  CreateReviewError get _value => super._value as CreateReviewError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(CreateReviewError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$CreateReviewError implements CreateReviewError {
  const _$CreateReviewError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CreateReview.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateReviewError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality().equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $CreateReviewErrorCopyWith<CreateReviewError> get copyWith =>
      _$CreateReviewErrorCopyWithImpl<CreateReviewError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateReviewStart value) $default, {
    required TResult Function(CreateReviewSuccessful value) successful,
    required TResult Function(CreateReviewError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateReviewStart value)? $default, {
    TResult Function(CreateReviewSuccessful value)? successful,
    TResult Function(CreateReviewError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateReviewError implements CreateReview, ErrorAction {
  const factory CreateReviewError(Object error, StackTrace stackTrace) = _$CreateReviewError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateReviewErrorCopyWith<CreateReviewError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetUsersTearOff {
  const _$GetUsersTearOff();

  GetUsersStart call(List<String> uids) {
    return GetUsersStart(
      uids,
    );
  }

  GetUsersSuccessful successful(List<AppUser> users) {
    return GetUsersSuccessful(
      users,
    );
  }

  GetUsersError error(Object error, StackTrace stackTrace) {
    return GetUsersError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetUsers = _$GetUsersTearOff();

/// @nodoc
mixin _$GetUsers {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<String> uids) $default, {
    required TResult Function(List<AppUser> users) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<String> uids)? $default, {
    TResult Function(List<AppUser> users)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUsersStart value) $default, {
    required TResult Function(GetUsersSuccessful value) successful,
    required TResult Function(GetUsersError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUsersStart value)? $default, {
    TResult Function(GetUsersSuccessful value)? successful,
    TResult Function(GetUsersError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUsersCopyWith<$Res> {
  factory $GetUsersCopyWith(GetUsers value, $Res Function(GetUsers) then) = _$GetUsersCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUsersCopyWithImpl<$Res> implements $GetUsersCopyWith<$Res> {
  _$GetUsersCopyWithImpl(this._value, this._then);

  final GetUsers _value;
  // ignore: unused_field
  final $Res Function(GetUsers) _then;
}

/// @nodoc
abstract class $GetUsersStartCopyWith<$Res> {
  factory $GetUsersStartCopyWith(GetUsersStart value, $Res Function(GetUsersStart) then) =
      _$GetUsersStartCopyWithImpl<$Res>;
  $Res call({List<String> uids});
}

/// @nodoc
class _$GetUsersStartCopyWithImpl<$Res> extends _$GetUsersCopyWithImpl<$Res> implements $GetUsersStartCopyWith<$Res> {
  _$GetUsersStartCopyWithImpl(GetUsersStart _value, $Res Function(GetUsersStart) _then)
      : super(_value, (v) => _then(v as GetUsersStart));

  @override
  GetUsersStart get _value => super._value as GetUsersStart;

  @override
  $Res call({
    Object? uids = freezed,
  }) {
    return _then(GetUsersStart(
      uids == freezed
          ? _value.uids
          : uids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GetUsersStart implements GetUsersStart {
  const _$GetUsersStart(this.uids);

  @override
  final List<String> uids;

  @override
  String toString() {
    return 'GetUsers(uids: $uids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUsersStart &&
            (identical(other.uids, uids) || const DeepCollectionEquality().equals(other.uids, uids)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(uids);

  @JsonKey(ignore: true)
  @override
  $GetUsersStartCopyWith<GetUsersStart> get copyWith => _$GetUsersStartCopyWithImpl<GetUsersStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<String> uids) $default, {
    required TResult Function(List<AppUser> users) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(uids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<String> uids)? $default, {
    TResult Function(List<AppUser> users)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(uids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUsersStart value) $default, {
    required TResult Function(GetUsersSuccessful value) successful,
    required TResult Function(GetUsersError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUsersStart value)? $default, {
    TResult Function(GetUsersSuccessful value)? successful,
    TResult Function(GetUsersError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetUsersStart implements GetUsers {
  const factory GetUsersStart(List<String> uids) = _$GetUsersStart;

  List<String> get uids => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUsersStartCopyWith<GetUsersStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUsersSuccessfulCopyWith<$Res> {
  factory $GetUsersSuccessfulCopyWith(GetUsersSuccessful value, $Res Function(GetUsersSuccessful) then) =
      _$GetUsersSuccessfulCopyWithImpl<$Res>;
  $Res call({List<AppUser> users});
}

/// @nodoc
class _$GetUsersSuccessfulCopyWithImpl<$Res> extends _$GetUsersCopyWithImpl<$Res>
    implements $GetUsersSuccessfulCopyWith<$Res> {
  _$GetUsersSuccessfulCopyWithImpl(GetUsersSuccessful _value, $Res Function(GetUsersSuccessful) _then)
      : super(_value, (v) => _then(v as GetUsersSuccessful));

  @override
  GetUsersSuccessful get _value => super._value as GetUsersSuccessful;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(GetUsersSuccessful(
      users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<AppUser>,
    ));
  }
}

/// @nodoc

class _$GetUsersSuccessful implements GetUsersSuccessful {
  const _$GetUsersSuccessful(this.users);

  @override
  final List<AppUser> users;

  @override
  String toString() {
    return 'GetUsers.successful(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUsersSuccessful &&
            (identical(other.users, users) || const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  $GetUsersSuccessfulCopyWith<GetUsersSuccessful> get copyWith =>
      _$GetUsersSuccessfulCopyWithImpl<GetUsersSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<String> uids) $default, {
    required TResult Function(List<AppUser> users) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<String> uids)? $default, {
    TResult Function(List<AppUser> users)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUsersStart value) $default, {
    required TResult Function(GetUsersSuccessful value) successful,
    required TResult Function(GetUsersError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUsersStart value)? $default, {
    TResult Function(GetUsersSuccessful value)? successful,
    TResult Function(GetUsersError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetUsersSuccessful implements GetUsers {
  const factory GetUsersSuccessful(List<AppUser> users) = _$GetUsersSuccessful;

  List<AppUser> get users => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUsersSuccessfulCopyWith<GetUsersSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUsersErrorCopyWith<$Res> {
  factory $GetUsersErrorCopyWith(GetUsersError value, $Res Function(GetUsersError) then) =
      _$GetUsersErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetUsersErrorCopyWithImpl<$Res> extends _$GetUsersCopyWithImpl<$Res> implements $GetUsersErrorCopyWith<$Res> {
  _$GetUsersErrorCopyWithImpl(GetUsersError _value, $Res Function(GetUsersError) _then)
      : super(_value, (v) => _then(v as GetUsersError));

  @override
  GetUsersError get _value => super._value as GetUsersError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetUsersError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetUsersError implements GetUsersError {
  const _$GetUsersError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetUsers.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUsersError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality().equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetUsersErrorCopyWith<GetUsersError> get copyWith => _$GetUsersErrorCopyWithImpl<GetUsersError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<String> uids) $default, {
    required TResult Function(List<AppUser> users) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<String> uids)? $default, {
    TResult Function(List<AppUser> users)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUsersStart value) $default, {
    required TResult Function(GetUsersSuccessful value) successful,
    required TResult Function(GetUsersError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUsersStart value)? $default, {
    TResult Function(GetUsersSuccessful value)? successful,
    TResult Function(GetUsersError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetUsersError implements GetUsers, ErrorAction {
  const factory GetUsersError(Object error, StackTrace stackTrace) = _$GetUsersError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUsersErrorCopyWith<GetUsersError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetReviewsTearOff {
  const _$GetReviewsTearOff();

  GetReviewsStart call() {
    return const GetReviewsStart();
  }

  GetReviewsSuccessful successful(List<Review> reviews) {
    return GetReviewsSuccessful(
      reviews,
    );
  }

  GetReviewsError error(Object error, StackTrace stackTrace) {
    return GetReviewsError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetReviews = _$GetReviewsTearOff();

/// @nodoc
mixin _$GetReviews {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Review> reviews) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Review> reviews)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetReviewsStart value) $default, {
    required TResult Function(GetReviewsSuccessful value) successful,
    required TResult Function(GetReviewsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetReviewsStart value)? $default, {
    TResult Function(GetReviewsSuccessful value)? successful,
    TResult Function(GetReviewsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetReviewsCopyWith<$Res> {
  factory $GetReviewsCopyWith(GetReviews value, $Res Function(GetReviews) then) = _$GetReviewsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetReviewsCopyWithImpl<$Res> implements $GetReviewsCopyWith<$Res> {
  _$GetReviewsCopyWithImpl(this._value, this._then);

  final GetReviews _value;
  // ignore: unused_field
  final $Res Function(GetReviews) _then;
}

/// @nodoc
abstract class $GetReviewsStartCopyWith<$Res> {
  factory $GetReviewsStartCopyWith(GetReviewsStart value, $Res Function(GetReviewsStart) then) =
      _$GetReviewsStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetReviewsStartCopyWithImpl<$Res> extends _$GetReviewsCopyWithImpl<$Res>
    implements $GetReviewsStartCopyWith<$Res> {
  _$GetReviewsStartCopyWithImpl(GetReviewsStart _value, $Res Function(GetReviewsStart) _then)
      : super(_value, (v) => _then(v as GetReviewsStart));

  @override
  GetReviewsStart get _value => super._value as GetReviewsStart;
}

/// @nodoc

class _$GetReviewsStart implements GetReviewsStart {
  const _$GetReviewsStart();

  @override
  String toString() {
    return 'GetReviews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetReviewsStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Review> reviews) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Review> reviews)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetReviewsStart value) $default, {
    required TResult Function(GetReviewsSuccessful value) successful,
    required TResult Function(GetReviewsError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetReviewsStart value)? $default, {
    TResult Function(GetReviewsSuccessful value)? successful,
    TResult Function(GetReviewsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetReviewsStart implements GetReviews {
  const factory GetReviewsStart() = _$GetReviewsStart;
}

/// @nodoc
abstract class $GetReviewsSuccessfulCopyWith<$Res> {
  factory $GetReviewsSuccessfulCopyWith(GetReviewsSuccessful value, $Res Function(GetReviewsSuccessful) then) =
      _$GetReviewsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Review> reviews});
}

/// @nodoc
class _$GetReviewsSuccessfulCopyWithImpl<$Res> extends _$GetReviewsCopyWithImpl<$Res>
    implements $GetReviewsSuccessfulCopyWith<$Res> {
  _$GetReviewsSuccessfulCopyWithImpl(GetReviewsSuccessful _value, $Res Function(GetReviewsSuccessful) _then)
      : super(_value, (v) => _then(v as GetReviewsSuccessful));

  @override
  GetReviewsSuccessful get _value => super._value as GetReviewsSuccessful;

  @override
  $Res call({
    Object? reviews = freezed,
  }) {
    return _then(GetReviewsSuccessful(
      reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }
}

/// @nodoc

class _$GetReviewsSuccessful implements GetReviewsSuccessful {
  const _$GetReviewsSuccessful(this.reviews);

  @override
  final List<Review> reviews;

  @override
  String toString() {
    return 'GetReviews.successful(reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetReviewsSuccessful &&
            (identical(other.reviews, reviews) || const DeepCollectionEquality().equals(other.reviews, reviews)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(reviews);

  @JsonKey(ignore: true)
  @override
  $GetReviewsSuccessfulCopyWith<GetReviewsSuccessful> get copyWith =>
      _$GetReviewsSuccessfulCopyWithImpl<GetReviewsSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Review> reviews) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Review> reviews)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetReviewsStart value) $default, {
    required TResult Function(GetReviewsSuccessful value) successful,
    required TResult Function(GetReviewsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetReviewsStart value)? $default, {
    TResult Function(GetReviewsSuccessful value)? successful,
    TResult Function(GetReviewsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetReviewsSuccessful implements GetReviews {
  const factory GetReviewsSuccessful(List<Review> reviews) = _$GetReviewsSuccessful;

  List<Review> get reviews => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetReviewsSuccessfulCopyWith<GetReviewsSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetReviewsErrorCopyWith<$Res> {
  factory $GetReviewsErrorCopyWith(GetReviewsError value, $Res Function(GetReviewsError) then) =
      _$GetReviewsErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetReviewsErrorCopyWithImpl<$Res> extends _$GetReviewsCopyWithImpl<$Res>
    implements $GetReviewsErrorCopyWith<$Res> {
  _$GetReviewsErrorCopyWithImpl(GetReviewsError _value, $Res Function(GetReviewsError) _then)
      : super(_value, (v) => _then(v as GetReviewsError));

  @override
  GetReviewsError get _value => super._value as GetReviewsError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetReviewsError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetReviewsError implements GetReviewsError {
  const _$GetReviewsError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetReviews.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetReviewsError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality().equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetReviewsErrorCopyWith<GetReviewsError> get copyWith =>
      _$GetReviewsErrorCopyWithImpl<GetReviewsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Review> reviews) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Review> reviews)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetReviewsStart value) $default, {
    required TResult Function(GetReviewsSuccessful value) successful,
    required TResult Function(GetReviewsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetReviewsStart value)? $default, {
    TResult Function(GetReviewsSuccessful value)? successful,
    TResult Function(GetReviewsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetReviewsError implements GetReviews, ErrorAction {
  const factory GetReviewsError(Object error, StackTrace stackTrace) = _$GetReviewsError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetReviewsErrorCopyWith<GetReviewsError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetSelectedMovieTearOff {
  const _$SetSelectedMovieTearOff();

  SetSelectedMovie$ call(int movieId) {
    return SetSelectedMovie$(
      movieId,
    );
  }
}

/// @nodoc
const $SetSelectedMovie = _$SetSelectedMovieTearOff();

/// @nodoc
mixin _$SetSelectedMovie {
  int get movieId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSelectedMovieCopyWith<SetSelectedMovie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedMovieCopyWith<$Res> {
  factory $SetSelectedMovieCopyWith(SetSelectedMovie value, $Res Function(SetSelectedMovie) then) =
      _$SetSelectedMovieCopyWithImpl<$Res>;
  $Res call({int movieId});
}

/// @nodoc
class _$SetSelectedMovieCopyWithImpl<$Res> implements $SetSelectedMovieCopyWith<$Res> {
  _$SetSelectedMovieCopyWithImpl(this._value, this._then);

  final SetSelectedMovie _value;
  // ignore: unused_field
  final $Res Function(SetSelectedMovie) _then;

  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(_value.copyWith(
      movieId: movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SetSelectedMovie$CopyWith<$Res> implements $SetSelectedMovieCopyWith<$Res> {
  factory $SetSelectedMovie$CopyWith(SetSelectedMovie$ value, $Res Function(SetSelectedMovie$) then) =
      _$SetSelectedMovie$CopyWithImpl<$Res>;
  @override
  $Res call({int movieId});
}

/// @nodoc
class _$SetSelectedMovie$CopyWithImpl<$Res> extends _$SetSelectedMovieCopyWithImpl<$Res>
    implements $SetSelectedMovie$CopyWith<$Res> {
  _$SetSelectedMovie$CopyWithImpl(SetSelectedMovie$ _value, $Res Function(SetSelectedMovie$) _then)
      : super(_value, (v) => _then(v as SetSelectedMovie$));

  @override
  SetSelectedMovie$ get _value => super._value as SetSelectedMovie$;

  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(SetSelectedMovie$(
      movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetSelectedMovie$ implements SetSelectedMovie$ {
  const _$SetSelectedMovie$(this.movieId);

  @override
  final int movieId;

  @override
  String toString() {
    return 'SetSelectedMovie(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetSelectedMovie$ &&
            (identical(other.movieId, movieId) || const DeepCollectionEquality().equals(other.movieId, movieId)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieId);

  @JsonKey(ignore: true)
  @override
  $SetSelectedMovie$CopyWith<SetSelectedMovie$> get copyWith =>
      _$SetSelectedMovie$CopyWithImpl<SetSelectedMovie$>(this, _$identity);
}

abstract class SetSelectedMovie$ implements SetSelectedMovie {
  const factory SetSelectedMovie$(int movieId) = _$SetSelectedMovie$;

  @override
  int get movieId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SetSelectedMovie$CopyWith<SetSelectedMovie$> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpdateQueryFieldsTearOff {
  const _$UpdateQueryFieldsTearOff();

  UpdateQueryFields$ call({String? genre, String? quality}) {
    return UpdateQueryFields$(
      genre: genre,
      quality: quality,
    );
  }
}

/// @nodoc
const $UpdateQueryFields = _$UpdateQueryFieldsTearOff();

/// @nodoc
mixin _$UpdateQueryFields {
  String? get genre => throw _privateConstructorUsedError;
  String? get quality => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateQueryFieldsCopyWith<UpdateQueryFields> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateQueryFieldsCopyWith<$Res> {
  factory $UpdateQueryFieldsCopyWith(UpdateQueryFields value, $Res Function(UpdateQueryFields) then) =
      _$UpdateQueryFieldsCopyWithImpl<$Res>;
  $Res call({String? genre, String? quality});
}

/// @nodoc
class _$UpdateQueryFieldsCopyWithImpl<$Res> implements $UpdateQueryFieldsCopyWith<$Res> {
  _$UpdateQueryFieldsCopyWithImpl(this._value, this._then);

  final UpdateQueryFields _value;
  // ignore: unused_field
  final $Res Function(UpdateQueryFields) _then;

  @override
  $Res call({
    Object? genre = freezed,
    Object? quality = freezed,
  }) {
    return _then(_value.copyWith(
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $UpdateQueryFields$CopyWith<$Res> implements $UpdateQueryFieldsCopyWith<$Res> {
  factory $UpdateQueryFields$CopyWith(UpdateQueryFields$ value, $Res Function(UpdateQueryFields$) then) =
      _$UpdateQueryFields$CopyWithImpl<$Res>;
  @override
  $Res call({String? genre, String? quality});
}

/// @nodoc
class _$UpdateQueryFields$CopyWithImpl<$Res> extends _$UpdateQueryFieldsCopyWithImpl<$Res>
    implements $UpdateQueryFields$CopyWith<$Res> {
  _$UpdateQueryFields$CopyWithImpl(UpdateQueryFields$ _value, $Res Function(UpdateQueryFields$) _then)
      : super(_value, (v) => _then(v as UpdateQueryFields$));

  @override
  UpdateQueryFields$ get _value => super._value as UpdateQueryFields$;

  @override
  $Res call({
    Object? genre = freezed,
    Object? quality = freezed,
  }) {
    return _then(UpdateQueryFields$(
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateQueryFields$ implements UpdateQueryFields$ {
  const _$UpdateQueryFields$({this.genre, this.quality});

  @override
  final String? genre;
  @override
  final String? quality;

  @override
  String toString() {
    return 'UpdateQueryFields(genre: $genre, quality: $quality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateQueryFields$ &&
            (identical(other.genre, genre) || const DeepCollectionEquality().equals(other.genre, genre)) &&
            (identical(other.quality, quality) || const DeepCollectionEquality().equals(other.quality, quality)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genre) ^ const DeepCollectionEquality().hash(quality);

  @JsonKey(ignore: true)
  @override
  $UpdateQueryFields$CopyWith<UpdateQueryFields$> get copyWith =>
      _$UpdateQueryFields$CopyWithImpl<UpdateQueryFields$>(this, _$identity);
}

abstract class UpdateQueryFields$ implements UpdateQueryFields {
  const factory UpdateQueryFields$({String? genre, String? quality}) = _$UpdateQueryFields$;

  @override
  String? get genre => throw _privateConstructorUsedError;
  @override
  String? get quality => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UpdateQueryFields$CopyWith<UpdateQueryFields$> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetMoviesTearOff {
  const _$GetMoviesTearOff();

  GetMoviesStart call() {
    return const GetMoviesStart();
  }

  GetMoviesSuccessful successful(List<Movie> movies) {
    return GetMoviesSuccessful(
      movies,
    );
  }

  GetMoviesError error(Object error, StackTrace stackTrace) {
    return GetMoviesError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetMovies = _$GetMoviesTearOff();

/// @nodoc
mixin _$GetMovies {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Movie> movies) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> movies)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMoviesStart value) $default, {
    required TResult Function(GetMoviesSuccessful value) successful,
    required TResult Function(GetMoviesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMoviesStart value)? $default, {
    TResult Function(GetMoviesSuccessful value)? successful,
    TResult Function(GetMoviesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMoviesCopyWith<$Res> {
  factory $GetMoviesCopyWith(GetMovies value, $Res Function(GetMovies) then) = _$GetMoviesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMoviesCopyWithImpl<$Res> implements $GetMoviesCopyWith<$Res> {
  _$GetMoviesCopyWithImpl(this._value, this._then);

  final GetMovies _value;
  // ignore: unused_field
  final $Res Function(GetMovies) _then;
}

/// @nodoc
abstract class $GetMoviesStartCopyWith<$Res> {
  factory $GetMoviesStartCopyWith(GetMoviesStart value, $Res Function(GetMoviesStart) then) =
      _$GetMoviesStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetMoviesStartCopyWithImpl<$Res> extends _$GetMoviesCopyWithImpl<$Res>
    implements $GetMoviesStartCopyWith<$Res> {
  _$GetMoviesStartCopyWithImpl(GetMoviesStart _value, $Res Function(GetMoviesStart) _then)
      : super(_value, (v) => _then(v as GetMoviesStart));

  @override
  GetMoviesStart get _value => super._value as GetMoviesStart;
}

/// @nodoc

class _$GetMoviesStart implements GetMoviesStart {
  const _$GetMoviesStart();

  @override
  String toString() {
    return 'GetMovies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetMoviesStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Movie> movies) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> movies)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMoviesStart value) $default, {
    required TResult Function(GetMoviesSuccessful value) successful,
    required TResult Function(GetMoviesError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMoviesStart value)? $default, {
    TResult Function(GetMoviesSuccessful value)? successful,
    TResult Function(GetMoviesError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetMoviesStart implements GetMovies {
  const factory GetMoviesStart() = _$GetMoviesStart;
}

/// @nodoc
abstract class $GetMoviesSuccessfulCopyWith<$Res> {
  factory $GetMoviesSuccessfulCopyWith(GetMoviesSuccessful value, $Res Function(GetMoviesSuccessful) then) =
      _$GetMoviesSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Movie> movies});
}

/// @nodoc
class _$GetMoviesSuccessfulCopyWithImpl<$Res> extends _$GetMoviesCopyWithImpl<$Res>
    implements $GetMoviesSuccessfulCopyWith<$Res> {
  _$GetMoviesSuccessfulCopyWithImpl(GetMoviesSuccessful _value, $Res Function(GetMoviesSuccessful) _then)
      : super(_value, (v) => _then(v as GetMoviesSuccessful));

  @override
  GetMoviesSuccessful get _value => super._value as GetMoviesSuccessful;

  @override
  $Res call({
    Object? movies = freezed,
  }) {
    return _then(GetMoviesSuccessful(
      movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$GetMoviesSuccessful implements GetMoviesSuccessful {
  const _$GetMoviesSuccessful(this.movies);

  @override
  final List<Movie> movies;

  @override
  String toString() {
    return 'GetMovies.successful(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMoviesSuccessful &&
            (identical(other.movies, movies) || const DeepCollectionEquality().equals(other.movies, movies)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(movies);

  @JsonKey(ignore: true)
  @override
  $GetMoviesSuccessfulCopyWith<GetMoviesSuccessful> get copyWith =>
      _$GetMoviesSuccessfulCopyWithImpl<GetMoviesSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Movie> movies) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> movies)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMoviesStart value) $default, {
    required TResult Function(GetMoviesSuccessful value) successful,
    required TResult Function(GetMoviesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMoviesStart value)? $default, {
    TResult Function(GetMoviesSuccessful value)? successful,
    TResult Function(GetMoviesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetMoviesSuccessful implements GetMovies {
  const factory GetMoviesSuccessful(List<Movie> movies) = _$GetMoviesSuccessful;

  List<Movie> get movies => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMoviesSuccessfulCopyWith<GetMoviesSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMoviesErrorCopyWith<$Res> {
  factory $GetMoviesErrorCopyWith(GetMoviesError value, $Res Function(GetMoviesError) then) =
      _$GetMoviesErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetMoviesErrorCopyWithImpl<$Res> extends _$GetMoviesCopyWithImpl<$Res>
    implements $GetMoviesErrorCopyWith<$Res> {
  _$GetMoviesErrorCopyWithImpl(GetMoviesError _value, $Res Function(GetMoviesError) _then)
      : super(_value, (v) => _then(v as GetMoviesError));

  @override
  GetMoviesError get _value => super._value as GetMoviesError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetMoviesError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetMoviesError implements GetMoviesError {
  const _$GetMoviesError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetMovies.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMoviesError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality().equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetMoviesErrorCopyWith<GetMoviesError> get copyWith =>
      _$GetMoviesErrorCopyWithImpl<GetMoviesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Movie> movies) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Movie> movies)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMoviesStart value) $default, {
    required TResult Function(GetMoviesSuccessful value) successful,
    required TResult Function(GetMoviesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMoviesStart value)? $default, {
    TResult Function(GetMoviesSuccessful value)? successful,
    TResult Function(GetMoviesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetMoviesError implements GetMovies, ErrorAction {
  const factory GetMoviesError(Object error, StackTrace stackTrace) = _$GetMoviesError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMoviesErrorCopyWith<GetMoviesError> get copyWith => throw _privateConstructorUsedError;
}
