library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:yts_movies_redux/models/auth/index.dart';
import 'package:yts_movies_redux/models/movie.dart';
import 'package:yts_movies_redux/models/review.dart';
import 'package:yts_movies_redux/models/serializers.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder b) updates]) = _$AppState;

  factory AppState.initialState() {
    return AppState((AppStateBuilder b) {
      b
        ..auth = AuthState.initialState().toBuilder()
        ..mustResetMovies = false
        ..isLoading = true
        ..nextPage = 1;
    });
  }

  factory AppState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  AppState._();

  BuiltMap<String, AppUser> get users;

  BuiltList<Review> get reviews;

  int? get selectedMovie;

  AuthState get auth;

  BuiltList<Movie> get movies;

  bool get isLoading;

  String? get genre;

  String? get quality;

  int get nextPage;

  bool get mustResetMovies;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
