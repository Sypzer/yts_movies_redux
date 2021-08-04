import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:yts_movies_redux/actions/index.dart';
import 'package:yts_movies_redux/models/app_state.dart';

class AddReviewPage extends StatefulWidget {
  const AddReviewPage({Key? key}) : super(key: key);

  @override
  _AddReviewPageState createState() => _AddReviewPageState();
}

class _AddReviewPageState extends State<AddReviewPage> {
  final TextEditingController _review = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Review'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _review,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a review.';
                  }

                  if (value.length < 3) {
                    return 'Please enter a longer text.';
                  }

                  return null;
                },
              ),
              Builder(
                builder: (BuildContext context) {
                  return TextButton(
                    child: const Text('Save'),
                    onPressed: () {
                      if (!Form.of(context)!.validate()) {
                        return;
                      }

                      StoreProvider.of<AppState>(context).dispatch(CreateReview(_review.text));
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
