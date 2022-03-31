import 'package:flutter/material.dart';
import 'package:task_design_itg/Constants/Colors.dart';

import '../Constants/Shared Widgets/paths_constants.dart';
import '../Widgets/Custom Button.dart';
import '../Widgets/Custom Text Field.dart';
import '../Widgets/Image Widgets.dart';
import '../Widgets/Text Widget.dart';

import '../Constants/Space Widgets.dart';
import '../Constants/Routes.dart' as route;

class verification extends StatefulWidget {
  const verification({Key? key}) : super(key: key);

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          imageWidget(PathConstants.NameAplicationLogo),
          VerticalSpace(5),
          textWidgetWithPadding('We Sent Code to your email', Color_Const.black,
              22, FontWeight.bold),
          VerticalSpace(1),
          textWidgetWithPadding(
              'Enter the eight digit verivication code sent to \n'
              'h*******@itgSoluations.com.',
              Color_Const.grey,
              18,
              FontWeight.normal),
          VerticalSpace(3),
          Padding(
            padding: const EdgeInsets.only(
                bottom: 8.0, left: 22.0, top: 4, right: 23),
            child: customTextFormFieldForPassward("82456542"),
          ),
          VerticalSpace(1),
          InkWell(
            onTap: () {},
            child: textWidgetWithPadding(
                'Resent Code', Color_Const.blue, 12, FontWeight.normal),
          ),
          VerticalSpace(3),
          customButton(
            'Verification',
            () {
              Navigator.of(context).pushNamed(route.resetPassward);
            },
          )
        ],
      ),
    );
  }
}
