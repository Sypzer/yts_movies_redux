library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:yts_movies_redux/models/app_state.dart';
import 'package:yts_movies_redux/models/auth/index.dart';
import 'package:yts_movies_redux/models/movie.dart';
import 'package:yts_movies_redux/models/review.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  Movie,
  AppState,
  AuthState,
  AppUser,
  Review,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();
