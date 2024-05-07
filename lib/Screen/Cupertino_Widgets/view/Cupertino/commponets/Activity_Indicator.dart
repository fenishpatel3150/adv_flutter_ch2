import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Cupertino/cupertino_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoButton activityIndicator(BuildContext context) {
  return CupertinoButton(child: cupertinowidgets("Activity Indicator"), onPressed: ()
  {
    showCupertinoModalPopup(context: context, builder: (context) => Center(
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: CupertinoColors.black,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(child: CupertinoActivityIndicator(
          color: Colors.white,
          radius: 20,
        )),
      ),
    ),);
  }
  );
}