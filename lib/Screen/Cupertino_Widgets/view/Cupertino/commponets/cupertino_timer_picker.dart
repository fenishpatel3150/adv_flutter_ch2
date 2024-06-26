
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Cupertino/cupertino_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoButton cupertino_timer_picker(BuildContext context) {
  return CupertinoButton(
    child: cupertinowidgets("TimerPicker"),
    onPressed: () {
      showCupertinoModalPopup(context: context, builder: (context) =>
          Container(
            height: 200,
            color: CupertinoColors.white,
            child: CupertinoTimerPicker(onTimerDurationChanged: (value) {

            },),
          ),);
    },
  );
}