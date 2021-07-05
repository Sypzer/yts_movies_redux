import 'package:yts_movies_redux/models/movie.dart';

class GetMovies {
  const GetMovies();
}

class GetMoviesSuccessful {
  GetMoviesSuccessful(this.movies);

  final List<Movie> movies;

  @override
  String toString() {
    return 'GetMoviesSuccessful{movies: $movies}';
  }
}

class GetMoviesError {
  GetMoviesError(this.error);

  final dynamic error;

  @override
  String toString() {
    return 'GetMoviesError{error: $error}';
  }
}
