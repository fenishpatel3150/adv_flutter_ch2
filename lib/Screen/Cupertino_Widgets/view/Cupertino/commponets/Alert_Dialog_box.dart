
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Cupertino/cupertino_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoButton alertdialogbox(BuildContext context) {
  return CupertinoButton(child: cupertinowidgets("Alert Dialog"), onPressed: () {
    showCupertinoDialog(context: context, builder: (context) => CupertinoAlertDialog(
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Close'),
        ),
      ],
      title: Text('Phone ringtone'),
    )

      ,);
  },);
}