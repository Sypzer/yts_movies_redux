import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:yts_movies_redux/actions/get_movies.dart';
import 'package:yts_movies_redux/actions/update_genre.dart';
import 'package:yts_movies_redux/actions/update_quality.dart';
import 'package:yts_movies_redux/containers/genre_container.dart';
import 'package:yts_movies_redux/containers/quality_container.dart';
import 'package:yts_movies_redux/models/app_state.dart';

class OptionsDrawer extends StatefulWidget {
  @override
  _OptionsDrawerState createState() => _OptionsDrawerState();
}

class _OptionsDrawerState extends State<OptionsDrawer> {
  List<String> genres = <String>[
    'Action',
    'Adventure',
    'Animation',
    'Biography',
    'Comedy',
    'Crime',
    'Documentary',
    'Drama',
    'Family',
    'Fantasy',
    'Film Noir',
    'History',
  ];
  List<String> qualities = <String>[
    '720p',
    '1080p',
    '2160p',
    '3D',
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 64,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GenreContainer(
              builder: (BuildContext context, String storeGenre) {
                return Row(
                  children: <Widget>[
                    const Text('GENRE: '),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: DropdownButton<String>(
                        items: genres
                            .map(
                              (String genre) => DropdownMenuItem(
                                child: Text(genre),
                                value: genre,
                              ),
                            )
                            .toList(),
                        onChanged: (String toChangeGenre) {
                          StoreProvider.of<AppState>(context)
                              .dispatch(UpdateGenre(toChangeGenre));
                        },
                        value: storeGenre,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: QualityContainer(
              builder: (BuildContext context, String storeQuality) {
                return Row(
                  children: <Widget>[
                    const Text('Quality: '),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: DropdownButton<String>(
                        items: qualities
                            .map(
                              (String quality) => DropdownMenuItem(
                                child: Text(quality),
                                value: quality,
                              ),
                            )
                            .toList(),
                        onChanged: (String toChangeQuality) {
                          StoreProvider.of<AppState>(context)
                              .dispatch(UpdateQuality(toChangeQuality));
                        },
                        value: storeQuality,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(GetMovies());
              },
              child: const Text('GET MOVIES!'),
            ),
          ),
        ],
      ),
    );
  }
}
