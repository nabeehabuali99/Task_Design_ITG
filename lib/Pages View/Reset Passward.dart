import 'package:flutter/material.dart';

import '../Constants/Colors.dart';
import '../Constants/Shared Widgets/paths_constants.dart';
import '../Widgets/Custom Button.dart';
import '../Widgets/Custom Text Field.dart';
import '../Widgets/Image Widgets.dart';
import '../Widgets/Text Widget.dart';
import '../Constants/Size_Config.dart';
import '../Constants/Space Widgets.dart';
import '../Constants/Routes.dart' as route;

class ResetPassward extends StatefulWidget {
  const ResetPassward({Key? key}) : super(key: key);

  @override
  State<ResetPassward> createState() => _ResetPasswardState();
}

class _ResetPasswardState extends State<ResetPassward> {
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
            textWidgetWithPadding('Choose a new password', Color_Const.black,
                22, FontWeight.bold),
            VerticalSpace(1),
            textWidgetWithPadding(
                'Create a new password that is at least 8 characters \n'
                'long.',
                Color_Const.grey,
                18,
                FontWeight.normal),
            VerticalSpace(2),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 8.0, left: 23.0, top: 4, right: 23),
              child: customTextFormFieldForPassward("new password"),
            ),
            VerticalSpace(1),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 8.0, left: 23.0, top: 4, right: 23),
              child:
                  customTextFormFieldForPassward("new password Confirmation"),
            ),
            VerticalSpace(3),
            customButton(
              'Submit',
              () {
                Navigator.of(context).pushNamed(route.loginPage);
              },
            )
          ],
        ));
  }
}
