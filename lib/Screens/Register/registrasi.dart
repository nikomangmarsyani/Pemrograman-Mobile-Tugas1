import 'package:flutter/material.dart';
import 'package:tugas_1/size_config.dart';
import 'package:tugas_1/Components/Register/signup_screen.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  const RegisterScreen({Key? key}) : super(key: key); // Ubah key menjadi parameter super

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SignUpScreen(),
    );
  }
}