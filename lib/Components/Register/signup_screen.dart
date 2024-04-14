import 'package:flutter/material.dart';
import 'package:tugas_1/Components/custom_surfix_icon.dart';
import 'package:tugas_1/Components/default_button_custome_color.dart';
import 'package:tugas_1/utils/constants.dart';
import 'package:tugas_1/size_config.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),

      ),
      body: SignUpForm(),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? username;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Masukkan Email",
                suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Email tidak boleh kosong";
                } else if (!emailValidatorRegExp.hasMatch(value)) {
                  return "Email tidak valid";
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Username",
                hintText: "Masukkan Username",
                suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Username tidak boleh kosong";
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  username = value;
                });
              },
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Masukkan Password",
                suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Password tidak boleh kosong";
                } else if (value.length < 6) {
                  return "Password terlalu pendek";
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
            ),
            SizedBox(height: getProportionateScreenHeight(40)),
            DefaultButtonCustomeColor(
              text: "Sign Up",
              color: kPrimaryColor,
              press: () {
                if (_formKey.currentState!.validate()) {
                  // Lakukan proses sign up di sini
                  // Misalnya:
                  // AuthService().signUp(email!, password!);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
