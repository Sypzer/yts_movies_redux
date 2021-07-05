// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'movies',
      serializers.serialize(object.movies,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Movie)])),
      'isLoading',
      serializers.serialize(object.isLoading,
          specifiedType: const FullType(bool)),
      'nextPage',
      serializers.serialize(object.nextPage,
          specifiedType: const FullType(int)),
      'mustResetMovies',
      serializers.serialize(object.mustResetMovies,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.genre;
    if (value != null) {
      result
        ..add('genre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quality;
    if (value != null) {
      result
        ..add('quality')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'movies':
          result.movies.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Movie)]))!
              as BuiltList<Object?>);
          break;
        case 'isLoading':
          result.isLoading = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'quality':
          result.quality = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nextPage':
          result.nextPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'mustResetMovies':
          result.mustResetMovies = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<Movie> movies;
  @override
  final bool isLoading;
  @override
  final String? genre;
  @override
  final String? quality;
  @override
  final int nextPage;
  @override
  final bool mustResetMovies;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {required this.movies,
      required this.isLoading,
      this.genre,
      this.quality,
      required this.nextPage,
      required this.mustResetMovies})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(movies, 'AppState', 'movies');
    BuiltValueNullFieldError.checkNotNull(isLoading, 'AppState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(nextPage, 'AppState', 'nextPage');
    BuiltValueNullFieldError.checkNotNull(
        mustResetMovies, 'AppState', 'mustResetMovies');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        movies == other.movies &&
        isLoading == other.isLoading &&
        genre == other.genre &&
        quality == other.quality &&
        nextPage == other.nextPage &&
        mustResetMovies == other.mustResetMovies;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, movies.hashCode), isLoading.hashCode),
                    genre.hashCode),
                quality.hashCode),
            nextPage.hashCode),
        mustResetMovies.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('movies', movies)
          ..add('isLoading', isLoading)
          ..add('genre', genre)
          ..add('quality', quality)
          ..add('nextPage', nextPage)
          ..add('mustResetMovies', mustResetMovies))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  ListBuilder<Movie>? _movies;
  ListBuilder<Movie> get movies => _$this._movies ??= new ListBuilder<Movie>();
  set movies(ListBuilder<Movie>? movies) => _$this._movies = movies;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  String? _quality;
  String? get quality => _$this._quality;
  set quality(String? quality) => _$this._quality = quality;

  int? _nextPage;
  int? get nextPage => _$this._nextPage;
  set nextPage(int? nextPage) => _$this._nextPage = nextPage;

  bool? _mustResetMovies;
  bool? get mustResetMovies => _$this._mustResetMovies;
  set mustResetMovies(bool? mustResetMovies) =>
      _$this._mustResetMovies = mustResetMovies;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _movies = $v.movies.toBuilder();
      _isLoading = $v.isLoading;
      _genre = $v.genre;
      _quality = $v.quality;
      _nextPage = $v.nextPage;
      _mustResetMovies = $v.mustResetMovies;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              movies: movies.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'AppState', 'isLoading'),
              genre: genre,
              quality: quality,
              nextPage: BuiltValueNullFieldError.checkNotNull(
                  nextPage, 'AppState', 'nextPage'),
              mustResetMovies: BuiltValueNullFieldError.checkNotNull(
                  mustResetMovies, 'AppState', 'mustResetMovies'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movies';
        movies.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
