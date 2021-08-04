import 'package:flutter/material.dart';
import 'package:yts_movies_redux/containers/reviews_container.dart';
import 'package:yts_movies_redux/containers/selected_movie_container.dart';
import 'package:yts_movies_redux/containers/user_container.dart';
import 'package:yts_movies_redux/containers/users_container.dart';
import 'package:yts_movies_redux/models/auth/index.dart';
import 'package:yts_movies_redux/models/movie.dart';
import 'package:yts_movies_redux/models/review.dart';
import 'package:yts_movies_redux/presentation/widgets/user_avatar.dart';
import 'package:intl/intl.dart';

class MoviePage extends StatefulWidget {
  const MoviePage.headline({Key? key}) : super(key: key);

  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return SelectedMovieContainer(
      builder: (BuildContext context, Movie movie) {
        return Scaffold(
          appBar: AppBar(
            title: Text(movie.title),
            centerTitle: true,
          ),
          floatingActionButton: UserContainer(
            builder: (BuildContext context, AppUser? user) {
              return FloatingActionButton.extended(
                heroTag: 'btn1',
                label: const Text('Review'),
                icon: const Icon(Icons.message_outlined),
                onPressed: () {
                  if (user == null) {
                    Navigator.pushNamed(context, '/login');
                  } else {
                    Navigator.pushNamed(context, '/review');
                  }
                },
              );
            },
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 1.33,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        movie.largeCoverImage,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              movie.title,
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '${movie.year}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white60,
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  '${movie.runtime} minutes',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white60,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '${movie.rating} / 10',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.amberAccent,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  child: UsersContainer(builder: (BuildContext context, Map<String, AppUser> users) {
                    return ReviewsContainer(builder: (BuildContext context, List<Review> reviews) {
                      final DateFormat format = DateFormat.yMMMMEEEEd().add_Hms();
                      return ListView.builder(
                        itemCount: reviews.length,
                        itemBuilder: (BuildContext context, int index) {
                          final Review review = reviews[index];
                          final AppUser? user = users[review.uid];

                          return ListTile(
                            leading: user != null ? UserAvatar(user: user) : null,
                            title: Text('${review.text}${user == null ? '' : ' (${user.displayName})'}'),
                            subtitle: Text(format.format(review.createdAt.toLocal())),
                          );
                        },
                      );
                    });
                  }),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
