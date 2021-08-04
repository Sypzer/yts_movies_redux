import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:yts_movies_redux/models/app_state.dart';
import 'package:yts_movies_redux/models/auth/index.dart';

class RegisterInfoContainer extends StatelessWidget {
  const RegisterInfoContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<RegisterInfo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, RegisterInfo>(
        builder: builder,
        converter: (Store<AppState> store) {
          return store.state.auth.registerInfo;
        });
  }
}
