import 'package:flutter/material.dart';

import '../Constants/Size_Config.dart';

Widget imageWidget (String image){

  return Padding(
    padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 15),
    child: Center(
      child: Image.asset(image),
    ),
  );

}