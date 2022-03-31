import 'package:flutter/material.dart';

import '../Constants/Colors.dart';
import '../Constants/Size_Config.dart';
import 'Text Widget.dart';

Widget customButton(String title, Function() onTap) {
  return Padding(
    padding: EdgeInsets.only(left: SizeConfig.defaultSize! * 2.5),
    child: InkWell(
      onTap: onTap,
      child: Container(
        height: SizeConfig.defaultSize! * 7,
        width: SizeConfig.defaultSize! * 37,
        child: Center(
            child: textWidget(title, Color_Const.white, 22, FontWeight.normal)),
        decoration: BoxDecoration(
            color: Color_Const.orangeAcc,
            borderRadius: BorderRadius.circular(12.0)),
      ),
    ),
  );
}
