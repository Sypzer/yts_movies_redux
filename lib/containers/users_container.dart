import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:yts_movies_redux/models/app_state.dart';
import 'package:yts_movies_redux/models/auth/index.dart';

class UsersContainer extends StatelessWidget {
  const UsersContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Map<String, AppUser>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, AppUser>>(
        builder: builder,
        converter: (Store<AppState> store) {
          return store.state.users.toMap();
        });
  }
}
