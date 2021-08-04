import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:yts_movies_redux/actions/index.dart';
import 'package:yts_movies_redux/containers/register_info_container.dart';
import 'package:yts_movies_redux/models/app_state.dart';
import 'package:yts_movies_redux/models/auth/index.dart';
import 'package:yts_movies_redux/routes.dart';

class NamePage extends StatelessWidget {
  const NamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Name'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Builder(
              builder: (BuildContext context) {
                return Column(
                  children: <Widget>[
                    RegisterInfoContainer(
                      builder: (BuildContext context, RegisterInfo info) {
                        print(info.email);
                        //StoreProvider.of<AppState>(context).dispatch(UpdateRegisterInfo(displayName: info.email!.split('@')[0]));
                        return TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'name',
                          ),
                          initialValue: info.email!.split('@')[0],
                          keyboardType: TextInputType.name,
                          onChanged: (String value) {
                            StoreProvider.of<AppState>(context).dispatch(UpdateRegisterInfo(displayName: value));
                          },
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please enter a name';
                            }
                            return null;
                          },
                        );
                      },
                    ),
                    const Spacer(),
                    TextButton(
                      child: const Text('Continue'),
                      onPressed: () {
                        final FormState? form = Form.of(context);
                        if (form != null) {
                          if (form.validate()) {
                            Navigator.pushNamed(context, AppRoutes.photo);
                          }
                        } else {
                          print('Form not found');
                        }
                      },
                    ),
                    const Divider(),
                    Text.rich(
                      TextSpan(
                        text: 'Already have an account?',
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Login',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.popUntil(context, ModalRoute.withName(AppRoutes.login));
                              },
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
