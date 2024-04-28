import 'package:flutter/material.dart';
import 'package:tugas_1/Components/Home/home.dart';
import 'package:tugas_1/Components/custom_surfix_icon.dart';
import 'package:tugas_1/Components/default_button_custome_color.dart';
import 'package:tugas_1/Screens/Home/home_screen.dart';
import 'package:tugas_1/Screens/Register/registrasi.dart';
import 'package:tugas_1/size_config.dart';
import 'package:tugas_1/utils/constants.dart';
import 'package:get_storage/get_storage.dart';
import 'package:dio/dio.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInForm createState() => _SignInForm();
}

class _SignInForm extends State<SignInForm> {
  String? username;
  String? password;
  bool? remember = false;

  final _dio = Dio();
  final _storage = GetStorage();
  final _apiUrl = 'https://mobileapis.manpits.xyz/api/';

  TextEditingController txtUserName = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildUserName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Tetap Masuk"),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Lupa Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          DefaultButtonCustomeColor(
            color: kPrimaryColor,
            text: "MASUK",
            press: () {
              goLogin();
              Navigator.pushReplacementNamed(context, HomeScreen.routeName); // Navigasi ke halaman utama
            },
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RegisterScreen.routeName);
            },
            child: Text(
              "Belum Punya Akun? Daftar di Sini",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'Masukkan username Anda',
        labelStyle: TextStyle(
          color: mSubtitleColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukkan password Anda',
        labelStyle: TextStyle(
          color: mSubtitleColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }
  void goLogin() async{
    try {
      final response = await _dio.post(
        '${_apiUrl}login',  
        data: {
          'email':emailValidatorRegExp,
          'password':password
        }
      );
      print(response.data);
      if(response.statusCode == 200){
        _storage.write('token', response.data['data']['token']);

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home())
        );
      }else{
        print('Login gagal: ${response.data}');
      }

    } on DioException catch (e) {
      print('${e.response} - ${e.response?.statusCode}');
    }
  }
}
