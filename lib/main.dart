import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tugas_1/Screens/Login/login_screens.dart';
import 'package:tugas_1/routes.dart';
import 'package:tugas_1/theme.dart';

Future<void> main() async {
  final myStorage = GetStorage(); // Inisialisasi penyimpanan data
  await GetStorage.init(); // Inisialisasi GetStorage

  myStorage.write('myText', 'This text is saved in local storage!');

  var savedValue = myStorage.read('myText');
  print('Data yang disimpan: $savedValue');

  runApp(
    MaterialApp(
      title: "Melodies",
      theme: theme(),
      initialRoute: LoginScreen.routeName,
      routes: routes,
    )
  );
}
