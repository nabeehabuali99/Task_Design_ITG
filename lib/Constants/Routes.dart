import 'package:flutter/material.dart';

import '../Pages View/ForgetPassward page.dart';
import '../Pages View/Login Page.dart';
import '../Pages View/Reset Passward.dart';
import '../Pages View/verification code Page.dart';

const String resetPassward = 'resetPassward';
const String forgetPassward = 'forgetPassward';
const String veriFication = 'Verification';
const String loginPage = 'LoginPage';
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
      case forgetPassward:
       return MaterialPageRoute(builder: (context) => const ForgetPassward());
     case resetPassward:
       return MaterialPageRoute(builder: (context) => const ResetPassward());
        case veriFication:
     return MaterialPageRoute(builder: (context) =>   const verification());
    case  loginPage:
       return MaterialPageRoute(builder: (context) => const LoginPage());

    default:
      throw ("This Rout does not exists");
  }
}
