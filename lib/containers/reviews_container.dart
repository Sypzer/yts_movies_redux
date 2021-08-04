import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:yts_movies_redux/models/app_state.dart';
import 'package:yts_movies_redux/models/review.dart';

class ReviewsContainer extends StatelessWidget {
  const ReviewsContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Review>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Review>>(
        builder: builder,
        converter: (Store<AppState> store) {
          return store.state.reviews.toList();
        });
  }
}
