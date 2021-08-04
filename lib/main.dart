import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:yts_movies_redux/actions/index.dart';
import 'package:yts_movies_redux/data/auth_api.dart';
import 'package:yts_movies_redux/data/yts_api.dart';
import 'package:yts_movies_redux/epics/app_epics.dart';
import 'package:yts_movies_redux/models/app_state.dart';
import 'package:yts_movies_redux/reducer/reducer.dart';
import 'package:yts_movies_redux/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final Client client = Client();
  final YtsApi ytsApi = YtsApi(client: client, firestore: FirebaseFirestore.instance);
  final AuthApi authApi = AuthApi(auth: FirebaseAuth.instance, firestore: FirebaseFirestore.instance);
  final AppState initialState = AppState.initialState();
  final AppEpics epics = AppEpics(authApi: authApi, ytsApi: ytsApi);
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epics),
    ],
  );
  store.dispatch(const InitializeApp());
  store.dispatch(const GetMoviesStart());

  runApp(MyApp(
    store: store,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        initialRoute: '/',
        routes: AppRoutes.routes,
      ),
    );
  }
}
