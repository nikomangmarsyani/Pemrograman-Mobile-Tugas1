import 'package:flutter/material.dart';
import 'package:tugas_1/Screens/Login/login_screens.dart';
import 'package:tugas_1/routes.dart';
import 'package:tugas_1/theme.dart';

void main() async {
  runApp(
    MaterialApp(
      title: "Melodies",
      theme: theme(),
      initialRoute: LoginScreen.routeName,
      routes: routes,
    )
  );
}