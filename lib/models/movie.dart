library movie;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:yts_movies_redux/models/serializers.dart';

part 'movie.g.dart';


abstract class Movie implements Built<Movie, MovieBuilder>{
  factory Movie([void Function(MovieBuilder b) updates ]) = _$Movie;
  factory Movie.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);


  Movie._();

  String get title;

  BuiltList<String> get genres;

  String get summary;

  @BuiltValueField(wireName: 'large_cover_image')
  String get largeCoverImage;

  double get rating;

  int get runtime;

  int get year;

  Map<String, dynamic> get json =>serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Movie> get serializer => _$movieSerializer;
}
/*
abstract class AppState implements Built<AppState, AppStateBuilder>{
  factory AppState.initialState(){
    return _$AppState((AppStateBuilder b){
      b._auth = AuthState.initialState().toBuilder();
    });
  }

  factory AppState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  AppState._();

  AuthState get auth;

  Map<String, dynamic>? get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>?;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
 */