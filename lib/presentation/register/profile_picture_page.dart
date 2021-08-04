import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yts_movies_redux/actions/auth/index.dart';
import 'package:yts_movies_redux/models/app_state.dart';
import 'package:yts_movies_redux/routes.dart';

class ProfilePicturePage extends StatefulWidget {
  const ProfilePicturePage({Key? key}) : super(key: key);

  @override
  _ProfilePicturePageState createState() => _ProfilePicturePageState();
}

class _ProfilePicturePageState extends State<ProfilePicturePage> {
  File? _image;
  final ImagePicker picker = ImagePicker();

  Future<void> getImageFromCamera() async {
    final XFile? pickedImage = await picker.pickImage(source: ImageSource.camera, maxWidth: 500);

    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        print('No image selected');
      }
    });
  }

  Future<void> getImageFromGallery() async {
    final XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        print('No image selected');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Upload a profile picture'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 16,
                    height: 260.0,
                    decoration: const BoxDecoration(color: Colors.greenAccent),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 220,
                          width: MediaQuery.of(context).size.width / 2 - 16,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: FloatingActionButton(
                              backgroundColor: Colors.white,
                              onPressed: getImageFromCamera,
                              tooltip: 'Realizeaza o poza',
                              child: const Icon(
                                Icons.camera,
                                color: Colors.black54,
                                size: 54,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'CAMERA',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 10.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 16,
                    height: 260.0,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 220,
                          width: MediaQuery.of(context).size.width / 2 - 16,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: FloatingActionButton(
                              backgroundColor: Colors.greenAccent,
                              onPressed: getImageFromGallery,
                              tooltip: 'Alege o poza',
                              child: const Icon(
                                Icons.folder,
                                color: Colors.black54,
                                size: 54,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'FISIERE',
                          style: TextStyle(
                            color: Colors.greenAccent,
                            letterSpacing: 10.0,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: _image == null ? MediaQuery.of(context).size.width - 16 : Image.file(_image!).width,
                height: 480,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.amberAccent,
                ),
                child: _image == null
                    ? Center(
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            'NICIO IMAGINE',
                            style: TextStyle(
                              color: Colors.black54,
                              letterSpacing: 10.0,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'SELECTATA',
                            style: TextStyle(
                              color: Colors.black54,
                              letterSpacing: 10.0,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ))
                    : Image.file(_image!),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            TextButton(
              child: const Text('Continue'),
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(UpdateRegisterInfo(file: _image));
                Navigator.pushNamed(context, AppRoutes.password);
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
        ),
      ),
    );
  }
}
