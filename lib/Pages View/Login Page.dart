import 'package:flutter/material.dart';
import 'package:task_design_itg/Constants/Colors.dart';

import '../Constants/Size_Config.dart';
import '../Constants/Routes.dart' as route;
import '../Widgets/Custom Text Field.dart';
import '../Widgets/Text Widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SizedBox(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight,
            child: Image.asset('assets/Group 4658.png', fit: BoxFit.cover),
          ),
          Positioned(
            top: SizeConfig.screenHeight! / 2,
            child: Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight! / 2,
              color: Color_Const.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.defaultSize! * 14,
                left: SizeConfig.defaultSize! * 12),
            child: Image.asset('assets/Group 4413.png'),
          ),
          Positioned(
            top: SizeConfig.defaultSize! * 33,
            left: SizeConfig.defaultSize! * 4,
            right: SizeConfig.defaultSize! * 4,
            child: Container(
              height: SizeConfig.defaultSize! * 30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: Center(
                        child: textWidget('ITG Demo', Color_Const.blue, 20,
                            FontWeight.normal)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 8.0, left: 12.0, top: 20, right: 12),
                    child: customTextFormFieldForSignInUserName(),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          bottom: 8.0, left: 12.0, top: 13, right: 12),
                      child: customTextFormFieldForSignInPass('Passward')),
                  Align(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4.0, right: 180.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(route.forgetPassward);
                        },
                        child: textWidget('Forgot Password?', Color_Const.black,
                            15, FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color_Const.white,
                      style: BorderStyle.solid,
                      width: 1.0),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color_Const.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10.0,
                        color: Color_Const.grey,
                        offset: const Offset(1.0, 1.0))
                  ]),
            ),
          ),
          Positioned(
            top: SizeConfig.defaultSize! * 26,
            left: SizeConfig.defaultSize! * 15,
            right: SizeConfig.defaultSize! * 15,
            bottom: SizeConfig.defaultSize! * 47,
            child: Container(
              height: SizeConfig.defaultSize! * 5,
              width: SizeConfig.defaultSize! * 2,
              child: Center(
                child: Image.asset('assets/Group 3.png'),
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color_Const.white,
                      style: BorderStyle.solid,
                      width: 1.0),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color_Const.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10.0,
                        color: Color_Const.grey,
                        offset: const Offset(1.0, 1.0))
                  ]),
            ),
          ),
          Positioned(
              top: SizeConfig.defaultSize! * 60,
              left: SizeConfig.defaultSize! * 8,
              right: SizeConfig.defaultSize! * 8,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: SizeConfig.defaultSize! * 5,
                  width: SizeConfig.defaultSize! * 2,
                  child: Center(
                      child: textWidget(
                          'Sign In', Color_Const.white, 22, FontWeight.normal)),
                  decoration: BoxDecoration(
                      color: Color_Const.orangeAcc,
                      borderRadius: BorderRadius.circular(2.0)),
                ),
              )),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 67),
                child: Center(
                    child: Image.asset('assets/Group 4311@3x.png',
                        width: SizeConfig.defaultSize! * 7,
                        height: SizeConfig.defaultSize! * 7)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Center(
                  child: textWidget('Place your finger to login',
                      Color_Const.blue, 15, FontWeight.normal),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 3),
                child: Center(
                  child: textWidget(
                      '© 2021 INTEGRATED TECHNOLOGY GROUP (ITG). ALL RIGHTS RESERVED.',
                      Color_Const.blue,
                      10,
                      FontWeight.normal),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
