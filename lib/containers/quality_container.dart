
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:yts_movies_redux/models/app_state.dart';

class QualityContainer extends StatelessWidget {


  const QualityContainer({Key key,@required this.builder}) : super(key: key);

  final ViewModelBuilder<String> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState,String>(builder: builder, converter: (Store<AppState> store){
      return store.state.quality;
    });
  }
}
