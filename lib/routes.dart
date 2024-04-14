import 'package:flutter/material.dart';
import 'package:tugas_1/Screens/Home/home_screen.dart';
import 'package:tugas_1/Screens/Login/login_screens.dart';
import 'package:tugas_1/Screens/Register/registrasi.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName:  (context)  => RegisterScreen(),
  HomeScreen.routeName: (context) => HomeScreen()
};