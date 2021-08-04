// GENERATED CODE - DO NOT MODIFY BY HAND

part of review;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Review> _$reviewSerializer = new _$ReviewSerializer();

class _$ReviewSerializer implements StructuredSerializer<Review> {
  @override
  final Iterable<Type> types = const [Review, _$Review];
  @override
  final String wireName = 'Review';

  @override
  Iterable<Object?> serialize(Serializers serializers, Review object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'movieId',
      serializers.serialize(object.movieId, specifiedType: const FullType(int)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt, specifiedType: const FullType(DateTime)),
    ];

    return result;
  }

  @override
  Review deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'movieId':
          result.movieId = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'text':
          result.text = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value, specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$Review extends Review {
  @override
  final String id;
  @override
  final String uid;
  @override
  final int movieId;
  @override
  final String text;
  @override
  final DateTime createdAt;

  factory _$Review([void Function(ReviewBuilder)? updates]) => (new ReviewBuilder()..update(updates)).build();

  _$Review._({required this.id, required this.uid, required this.movieId, required this.text, required this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Review', 'id');
    BuiltValueNullFieldError.checkNotNull(uid, 'Review', 'uid');
    BuiltValueNullFieldError.checkNotNull(movieId, 'Review', 'movieId');
    BuiltValueNullFieldError.checkNotNull(text, 'Review', 'text');
    BuiltValueNullFieldError.checkNotNull(createdAt, 'Review', 'createdAt');
  }

  @override
  Review rebuild(void Function(ReviewBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  ReviewBuilder toBuilder() => new ReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Review &&
        id == other.id &&
        uid == other.uid &&
        movieId == other.movieId &&
        text == other.text &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc($jc($jc(0, id.hashCode), uid.hashCode), movieId.hashCode), text.hashCode), createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Review')
          ..add('id', id)
          ..add('uid', uid)
          ..add('movieId', movieId)
          ..add('text', text)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ReviewBuilder implements Builder<Review, ReviewBuilder> {
  _$Review? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  int? _movieId;
  int? get movieId => _$this._movieId;
  set movieId(int? movieId) => _$this._movieId = movieId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ReviewBuilder();

  ReviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _uid = $v.uid;
      _movieId = $v.movieId;
      _text = $v.text;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Review other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Review;
  }

  @override
  void update(void Function(ReviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Review build() {
    final _$result = _$v ??
        new _$Review._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Review', 'id'),
            uid: BuiltValueNullFieldError.checkNotNull(uid, 'Review', 'uid'),
            movieId: BuiltValueNullFieldError.checkNotNull(movieId, 'Review', 'movieId'),
            text: BuiltValueNullFieldError.checkNotNull(text, 'Review', 'text'),
            createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, 'Review', 'createdAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
