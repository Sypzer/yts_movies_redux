import 'package:flutter/cupertino.dart';
import 'package:yts_movies_redux/presentation/add_review.dart';
import 'package:yts_movies_redux/presentation/home_page.dart';
import 'package:yts_movies_redux/presentation/login/login_page.dart';
import 'package:yts_movies_redux/presentation/movie_page.dart';
import 'package:yts_movies_redux/presentation/register/name_page.dart';
import 'package:yts_movies_redux/presentation/register/password_page.dart';
import 'package:yts_movies_redux/presentation/register/profile_picture_page.dart';
import 'package:yts_movies_redux/presentation/register/register_page.dart';

class AppRoutes {
  int a = 5;

  static const String home = '/';
  static const String details = '/details';
  static const String login = '/login';
  static const String register = '/register';
  static const String name = '/name';
  static const String password = '/password';
  static const String photo = '/photo';
  static const String review = '/review';

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const HomePage(),
    details: (BuildContext context) => const MoviePage.headline(),
    login: (BuildContext context) => const LoginPage(),
    register: (BuildContext context) => const RegisterPage(),
    name: (BuildContext context) => const NamePage(),
    password: (BuildContext context) => const PasswordPage(),
    photo: (BuildContext context) => const ProfilePicturePage(),
    review: (BuildContext context) => const AddReviewPage(),
  };
}
