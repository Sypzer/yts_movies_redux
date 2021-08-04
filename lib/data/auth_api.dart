import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart' as p;
import 'package:yts_movies_redux/models/auth/index.dart';

class AuthApi {
  AuthApi({required FirebaseAuth auth, required FirebaseFirestore firestore})
      : _auth = auth,
        _firestore = firestore;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  Future<AppUser?> getCurrentUser() async {
    final User? user = _auth.currentUser;
    if (user == null) {
      return null;
    }

    final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore //
        .doc('users/${user.uid}')
        .get();

    return AppUser.fromJson(snapshot.data());
  }

  Future<AppUser> register({required RegisterInfo info}) async {
    String photoUrl = '';
    firebase_storage.Reference reference;
    if (info.photo != null) {
      print('Uploading profile picture...');

      reference =
          firebase_storage.FirebaseStorage.instance.ref().child('profilePictures/${p.basename(info.photo!.path)}');
      await reference.putFile(info.photo!);
      photoUrl = await reference.getDownloadURL();
      print('Profile picture uploaded successfully!');
    }

    print('Crating UserCredentials for login...');
    final UserCredential result =
        await _auth.createUserWithEmailAndPassword(email: info.email!, password: info.password!);
    print('UserCredentials created successfully');

    final AppUser appUser = AppUser((AppUserBuilder b) {
      b
        ..uid = result.user!.uid
        ..email = result.user!.email
        ..displayName = info.displayName
        ..photoUrl = photoUrl;
    });

    await _firestore.doc('users/${appUser.uid}').set(appUser.json);

    return appUser;
  }

  Future<AppUser> login({required String email, required String password}) async {
    print('email: $email; password: $password');
    final UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    print('Auth result is: $result');
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore.doc('users/${result.user!.uid}').get();
    //print(AppUser.fromJson(snapshot.data));
    return AppUser.fromJson(snapshot.data());
  }

  Future<void> logout() async {
    await _auth.signOut();
  }
}
