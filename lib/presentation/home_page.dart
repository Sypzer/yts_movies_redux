import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:yts_movies_redux/actions/index.dart';
import 'package:yts_movies_redux/containers/is_loading_container.dart';
import 'package:yts_movies_redux/containers/movies_container.dart';
import 'package:yts_movies_redux/containers/must_reset_movies_container.dart';
import 'package:yts_movies_redux/models/app_state.dart';
import 'package:yts_movies_redux/models/movie.dart';
import 'package:yts_movies_redux/presentation/movie_page.dart';
import 'package:yts_movies_redux/presentation/options_drawer.dart';
import 'package:yts_movies_redux/presentation/widgets/user_avatar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const <Widget>[
          UserAvatar(),
        ],
        title: const Text('YTS Movies'),
      ),
      drawer: const OptionsDrawer(),
      body: Column(
        children: <Widget>[
          MustResetMoviesContainer(builder: (BuildContext context, bool mustResetMovies) {
            return IsLoadingContainer(
              builder: (BuildContext context, bool isLoading) {
                return MovieContainer(
                  builder: (BuildContext context, BuiltList<Movie> movies) {
                    if ((isLoading && movies.isEmpty) || (isLoading && mustResetMovies)) {
                      return const Expanded(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }

                    return Expanded(
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.66,
                        ),
                        itemCount: movies.length,
                        itemBuilder: (BuildContext context, int index) {
                          final Movie movie = movies[index];
                          return InkWell(
                            child: GridTile(
                              child: Image.network(movie.largeCoverImage),
                              footer: GridTileBar(
                                backgroundColor: Colors.black38,
                                title: Text(movie.title),
                                subtitle: Text(movie.genres.join(', ')),
                              ),
                            ),
                            onTap: () {
                              StoreProvider.of<AppState>(context)
                                ..dispatch(SetSelectedMovie(movie.id))
                                ..dispatch(const GetReviews());
                              Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context) {
                                return const MoviePage.headline();
                              }));
                            },
                          );
                        },
                      ),
                    );
                  },
                );
              },
            );
          }),
          TextButton(
            onPressed: () {
              StoreProvider.of<AppState>(context).dispatch(const GetMoviesStart());
            },
            child: const Text('Load More'),
          ),
        ],
      ),
    );
  }
}
