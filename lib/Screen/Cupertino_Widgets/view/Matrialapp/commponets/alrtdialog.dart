
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Matrialapp/commponets/container.dart';
import 'package:flutter/material.dart';

InkWell alertdialog(BuildContext context) {
  return InkWell(
    onTap: ()
    {
      showDialog(context: context, builder: (context) => AlertDialog(
        title: Text("Phone Ringtone"),
        actions: [

          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          ),
        ],
      ),);
    },
    child: matrialContainer("AlertDialog"),
  );
}