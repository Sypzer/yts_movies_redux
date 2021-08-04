import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:yts_movies_redux/models/app_state.dart';

import '../models/app_state.dart';

class MustResetMoviesContainer extends StatelessWidget {
  const MustResetMoviesContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<bool> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
        builder: builder,
        converter: (Store<AppState> store) {
          return store.state.mustResetMovies;
        });
  }
}
