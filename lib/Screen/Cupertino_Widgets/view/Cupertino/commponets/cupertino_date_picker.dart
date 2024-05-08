
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Cupertino/cupertino_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoButton cupertinodatepicker(BuildContext context) {
  return CupertinoButton(
    child: cupertinowidgets("DatePicker"),
    onPressed: () {
      showCupertinoModalPopup(context: context, builder: (context) => Container(
        height: 250,
        color: CupertinoColors.white,
        child: CupertinoDatePicker(
          mode:CupertinoDatePickerMode.dateAndTime,
          onDateTimeChanged: (DateTime value) {},
        ),
      ),);

    },
  );
}