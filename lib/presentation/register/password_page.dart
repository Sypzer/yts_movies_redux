import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:yts_movies_redux/actions/index.dart';
import 'package:yts_movies_redux/models/app_state.dart';
import 'package:yts_movies_redux/routes.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  bool _isLoading = false;

  void _onResult(AppAction action, BuildContext context) {
    setState(() {
      _isLoading = false;
    });
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    } else {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home, (_) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Password'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Builder(
              builder: (BuildContext context) {
                return Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'password',
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      onChanged: (String value) {
                        StoreProvider.of<AppState>(context).dispatch(UpdateRegisterInfo(password: value));
                      },
                      validator: (String? value) {
                        if (value!.length < 6) {
                          return 'Please enter a longer password';
                        }
                        return null;
                      },
                    ),
                    const Spacer(),
                    if (_isLoading)
                      const Center(
                        child: CircularProgressIndicator(),
                      )
                    else
                      TextButton(
                        child: const Text('Register'),
                        onPressed: () {
                          final FormState? form = Form.of(context);
                          if (form != null) {
                            if (form.validate()) {
                              StoreProvider.of<AppState>(context).dispatch(Register((AppAction action) {
                                _onResult(action, context);
                              }));
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
