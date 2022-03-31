import 'package:flutter/material.dart';

import '../Constants/Size_Config.dart';

Widget textWidget(
    String title,   Color color , double fontSize,FontWeight   fontWeight  ) {
  return Text(
      title,
      style:
      TextStyle( color: color, fontSize: fontSize,fontWeight: fontWeight ),

  );
}
Widget textWidgetWithPadding(
    String title,  Color color,  double fontSize,FontWeight   fontWeight  ) {
  return Padding(
    padding: EdgeInsets.only(left: SizeConfig.defaultSize! * 3),
    child: Text(
      title,
      style:
      TextStyle( color: color,   fontSize: fontSize,fontWeight: fontWeight ),
    ),
  );
}