import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:yts_movies_redux/actions/index.dart';
import 'package:yts_movies_redux/containers/genre_container.dart';
import 'package:yts_movies_redux/containers/quality_container.dart';
import 'package:yts_movies_redux/models/app_state.dart';

class OptionsDrawer extends StatefulWidget {
  const OptionsDrawer({Key? key}) : super(key: key);

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
          const SizedBox(
            height: 64,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GenreContainer(
              builder: (BuildContext context, String? storeGenre) {
                return Row(
                  children: <Widget>[
                    const Text('GENRE: '),
                    const SizedBox(
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
                        onChanged: (String? toChangeGenre) {
                          StoreProvider.of<AppState>(context).dispatch(UpdateQueryFields(genre: toChangeGenre));
                        },
                        value: storeGenre,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: QualityContainer(
              builder: (BuildContext context, String? storeQuality) {
                return Row(
                  children: <Widget>[
                    const Text('Quality: '),
                    const SizedBox(
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
                        onChanged: (String? toChangeQuality) {
                          StoreProvider.of<AppState>(context).dispatch(UpdateQueryFields(quality: toChangeQuality));
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
                StoreProvider.of<AppState>(context).dispatch(const GetMoviesStart());
              },
              child: const Text('GET MOVIES!'),
            ),
          ),
        ],
      ),
    );
  }
}
