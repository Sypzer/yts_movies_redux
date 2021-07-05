import 'dart:convert';

import 'package:http/http.dart';
import 'package:yts_movies_redux/models/movie.dart';

class YtsApi {
  YtsApi({required Client client}) : _client = client;
  final Client _client;

  Future<List<Movie>> getMovies(int page, String genre, String quality) async {
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
    final String body = response.body;
    final Map<dynamic, dynamic> responseData = jsonDecode(body) as Map<dynamic, dynamic>;
    final Map<dynamic, dynamic> moviesData = responseData['data'] as Map<dynamic, dynamic>;
    final List<dynamic> list = moviesData['movies'] as List<dynamic>;

    return list //
        .map((dynamic json) => Movie.fromJson(json))
        .toList();
  }
}
