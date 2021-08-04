import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:yts_movies_redux/models/auth/index.dart';
import 'package:yts_movies_redux/models/movie.dart';
import 'package:yts_movies_redux/models/review.dart';

class YtsApi {
  YtsApi({required Client client, required FirebaseFirestore firestore})
      : _client = client,
        _firestore = firestore;
  final Client _client;
  final FirebaseFirestore _firestore;

  Future<List<Movie>> getMovies(int page, String? genre, String? quality) async {
    String body = '';
    try {
      final Uri url = Uri(
        scheme: 'https', //
        host: 'yts.mx',
        pathSegments: <String>['api', 'v2', 'list_movies.json'],
        queryParameters: <String, String>{
          'limit': '20',
          'page': '$page',
          if (genre != null) 'genre': genre,
          if (quality != null) 'quality': quality,
        },
      );
      final Response response = await _client.get(url);
      body = response.body;
    } on SocketException catch (_) {
      if (page > 1) {
        return <Movie>[];
      }
      body = await rootBundle.loadString('res/movies.json');
    }

    final Map<dynamic, dynamic> responseData = jsonDecode(body) as Map<dynamic, dynamic>;
    final Map<dynamic, dynamic> moviesData = responseData['data'] as Map<dynamic, dynamic>;
    final List<dynamic> list = moviesData['movies'] as List<dynamic>;

    return list //
        .map((dynamic json) => Movie.fromJson(json))
        .toList();
  }

  Future<void> createReview({required String uid, required int movieId, required String text}) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('reviews').doc();
    final Review review = Review(
      id: ref.id,
      uid: uid,
      movieId: movieId,
      text: text,
      createdAt: DateTime.now().toUtc(),
    );
    await ref.set(review.json);
  }

  Future<List<Review>> getReviews(int movieId) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore //
        .collection('reviews')
        .where('movieId', isEqualTo: movieId)
        .get();

    return snapshot.docs //
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Review.fromJson(doc.data()))
        .toList();
  }

  Future<List<AppUser>> getUsers(List<String> uids) async {
    final List<AppUser> users = <AppUser>[];

    for (final String uid in uids) {
      final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore //
          .doc('users/$uid')
          .get();

      users.add(AppUser.fromJson(snapshot.data()));
    }

    return users;
  }
}
