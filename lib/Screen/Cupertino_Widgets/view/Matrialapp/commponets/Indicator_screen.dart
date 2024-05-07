
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Matrialapp/commponets/container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

InkWell Indicator(BuildContext context) {
  return InkWell(
    onTap: ()
    {
      showCupertinoModalPopup(context: context, builder: (context) => Center(
        child: Container(
            height: 150,
            width: 150,
            color: Colors.white,
            child: Center(child: CircularProgressIndicator())),
      ),);
    },
    child: matrialContainer("Indicator"),
  );
}