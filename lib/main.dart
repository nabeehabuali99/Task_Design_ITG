
import 'package:task_design_itg/Constants/Routes.dart' as route;
import 'package:flutter/material.dart';

import 'Pages View/ForgetPassward page.dart';
import 'Pages View/Login Page.dart';
import 'Pages View/Reset Passward.dart';
import 'Pages View/verification code Page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: route.controller,
      home: LoginPage()  ,
    );
  }
}
