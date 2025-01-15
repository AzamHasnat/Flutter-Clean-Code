import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_clean_code/config/routes/routes_name.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(Duration(seconds: 3),
    ()=> Navigator.pushNamedAndRemoveUntil(context, RoutesName.loginScreen, (route) => false) );
  }
}
