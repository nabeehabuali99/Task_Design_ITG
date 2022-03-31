import 'package:flutter/material.dart';
import 'package:task_design_itg/Constants/Size_Config.dart';
import 'package:task_design_itg/Constants/Space%20Widgets.dart';

import '../Constants/Colors.dart';
import '../Constants/Routes.dart' as route;
import '../Constants/Shared Widgets/paths_constants.dart';
import '../Widgets/Custom Button.dart';
import '../Widgets/Custom Text Field.dart';
import '../Widgets/Image Widgets.dart';
import '../Widgets/Text Widget.dart';

class ForgetPassward extends StatefulWidget {
  const ForgetPassward({Key? key}) : super(key: key);

  @override
  State<ForgetPassward> createState() => _ForgetPasswardState();
}

class _ForgetPasswardState extends State<ForgetPassward> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          imageWidget(PathConstants.NameAplicationLogo),
          VerticalSpace(5),
          textWidgetWithPadding(
              'Forget Your Passward ?', Color_Const.black, 22, FontWeight.bold),
          VerticalSpace(2),
          textWidgetWithPadding(
              'Enter your Email Address and send you a verfication  code to rest your passward',
              Color_Const.grey,
              18,
              FontWeight.normal),
          VerticalSpace(2),
          Padding(
            padding: const EdgeInsets.only(
                bottom: 8.0, left: 23.0, top: 4, right: 23),
            child:
            customTextFormFieldForPassward("nabuali@itgSoluations.com"),

          ),
          VerticalSpace(3),
          customButton(
            'Reset Password',
                () {
              Navigator.of(context).pushNamed(route.veriFication);
            },
          )

        ],
      ),
    );
  }
}
