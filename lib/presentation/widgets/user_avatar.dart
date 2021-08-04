import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:yts_movies_redux/actions/auth/index.dart';
import 'package:yts_movies_redux/containers/user_container.dart';
import 'package:yts_movies_redux/models/app_state.dart';
import 'package:yts_movies_redux/models/auth/index.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({Key? key, this.user}) : super(key: key);

  final AppUser? user;

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        final AppUser? currentUser = this.user ?? user;
        if (currentUser == null) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: CircleAvatar(
                backgroundColor: Theme.of(context).accentColor,
                child: const Icon(Icons.person),
              ),
            ),
          );
        }

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              StoreProvider.of<AppState>(context).dispatch(const LogOutStart());
            },
            child: CircleAvatar(
              backgroundImage: NetworkImage(currentUser.photoUrl!),
              backgroundColor: Theme.of(context).accentColor,
              child: Text(
                currentUser.displayName[0].toUpperCase(),
                style: const TextStyle(color: Colors.greenAccent),
              ),
            ),
          ),
        );
      },
    );
  }
}
