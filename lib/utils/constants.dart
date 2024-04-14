import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../size_config.dart';

const kPrimaryColor = Color.fromARGB(255, 126, 185, 240);
const kSecondaryColor = Color.fromARGB(255, 83, 84, 85);
const kThirdColor = Color(0xFFD8D2CB);
const kFourthColor = Color(0xFFEEEEEE);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kColorTeal = Color(0xFF008080);
const kColorTealSlow = Color(0xFF159897);
const kColorTealToSlow = Color(0xFF03c0c1);
const kColorBlue = Color(0xFF3EB2FF);
const kColorGreen = Color(0xFF00FCA6);
const kColorRedSlow = Color(0xFFf55f60);
const kColorYellow = Color(0xFFFFC654);

const mBackgroundColor = Color(0xFFFAFAFA);
const mBlueColor = Color(0xFF2C53B1);
const mGreyColor = Color(0xFFC5C5C5);
const mTitleColor = Color(0xFF23374D);
const mSubtitleColor = Color(0xFF8E8E8E);
const mBorderColor = Color(0xFFE8E8F3);
const mFillColor = Color(0xFFFFFFFF);
const mCardTitleColor = Color(0xFF2E4ECF);
const mCardSubtitleColor = mTitleColor;

const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kUsernameNullError = "Please Enter your username";
const String kKategoryNullError = "Please Enter your category";
const String kJudulBahanyNullError = "Judul bahan ajar tidak boleh kosong";
const String kKeteranganNullError = "Keterangan tidak boleh kosong";
const String kPersentaseBobotNullError = "Please Enter your weight percentage";
const String kInvalidUsernameError = "Please Enter Valid username";
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  fillColor: kPrimaryColor,
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

var mTitleStyle = GoogleFonts.inter(
    fontWeight: FontWeight.w600, color: mTitleColor, fontSize: 14);

var mTitleStyleColorWhite = GoogleFonts.inter(
    fontWeight: FontWeight.w600, color: mFillColor, fontSize: 12);

var mTitleStyle16 = GoogleFonts.inter(
    fontWeight: FontWeight.w600, color: mTitleColor, fontSize: 16);

var mTitleStyleColorTeal =
    GoogleFonts.inter(fontWeight: FontWeight.w600, color: kColorTeal, fontSize: 10);

var mTitleStyleColorRed =
    GoogleFonts.inter(fontWeight: FontWeight.w600, color: kColorRedSlow, fontSize: 10);

var mTitle = GoogleFonts.inter(
    fontWeight: FontWeight.w600, color: kFourthColor, fontSize: 14);

var mTitle2 =
    GoogleFonts.inter(fontWeight: FontWeight.w600, color: mTitleColor, fontSize: 14);

var mTitleStyleNameApps = GoogleFonts.inter(
  fontWeight: FontWeight.bold,
  color: mTitleColor,
  fontSize: 18,
);

var mTitleStyletugas = GoogleFonts.inter(
  fontWeight: FontWeight.bold,
  color: mTitleColor,
);