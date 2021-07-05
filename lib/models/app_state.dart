library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:yts_movies_redux/models/movie.dart';
import 'package:yts_movies_redux/models/serializers.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder b) updates]) = _$AppState;

  factory AppState.initialState() {
    return AppState((AppStateBuilder b) {
      b
        ..mustResetMovies = false
        ..isLoading = true
        ..nextPage = 1;
    });
  }

  factory AppState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  AppState._();

  BuiltList<Movie> get movies;

  bool get isLoading;

  String? get genre;

  String? get quality;

  int get nextPage;

  bool get mustResetMovies;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
