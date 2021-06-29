import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:yts_movies_redux/actions/get_movies.dart';
import 'package:yts_movies_redux/data/yts_api.dart';
import 'package:yts_movies_redux/middleware/app_middleware.dart';
import 'package:yts_movies_redux/models/app_state.dart';
import 'package:yts_movies_redux/presentation/home_page.dart';
import 'package:yts_movies_redux/reducer/reducer.dart';

void main() {
  final Client client = Client();
  final YtsApi ytsApi = YtsApi(client: client);
  final AppMiddleware middleware = AppMiddleware(ytsApi: ytsApi);
  final AppState initialState = AppState.initialState();
  final Store<AppState> store = Store<AppState>(reducer, initialState: initialState,middleware: middleware.middleware);

  store.dispatch(GetMovies());


  runApp(MyApp(store: store,));
}

class MyApp extends StatelessWidget {

  const MyApp({Key key,@required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: HomePage(),
      ),
    );
  }
}
