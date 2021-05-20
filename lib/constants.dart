import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'size_config.dart';

const kTitleStyle = TextStyle(
  fontSize: 20.0,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
const kBodyColor = Color(0xFF1592E6);
const kPrimaryColor = Color(0xFF007BFF);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradienColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF00FF5B), Color(0xFF0014FF)],
);
const kSuccesColor = Color(0xFF28A745);
const kDangerColor = Color(0xFFDC3545);
const kSecondaryColor = Color(0xFF6C757D);
const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds: 200);
final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
final RegExp emailValidatorRegExp =
    RegExp('r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
const String kEmailNullError = 'Please Enter your email';
const String kInvalidEmailError = 'Please Enter Valid Email';
const String kPassNullError = 'Please Enter your password';
const String kShortPassError = 'Password is too short';
const String kMatchPassError = 'Passwords don\'t match';
