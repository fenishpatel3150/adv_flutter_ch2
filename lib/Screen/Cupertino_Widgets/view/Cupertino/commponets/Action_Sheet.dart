import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Cupertino/cupertino_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoButton actionsheet(BuildContext context) {
  return CupertinoButton(
    child: cupertinowidgets("Action Sheet"),
    onPressed: () {
      showCupertinoDialog(
          context: context,
          builder: (context) => CupertinoActionSheet(
                title: Text(
                  'Favorite Dessert',
                  style: TextStyle(color: Colors.red),
                ),
            message: Column(
              children: [
                Center(child: Text(
                  'Please select the best dessert frome the\noption below.',
                  style: TextStyle(color: Colors.grey),)),
                Container(
                    height: 50,
                    child: Center(child: Text("Profiteroles",
                      style: TextStyle(color: Colors.blue, fontSize: 20),))),
                Container(
                    height: 50,
                    child: Center(child: Text("Cannolis",
                      style: TextStyle(color: Colors.blue, fontSize: 20),))),
                Container(
                    height: 50,
                    child: Center(child: Text("Trifile",
                      style: TextStyle(color: Colors.blue, fontSize: 20),))),
              ],
            ),
              ));
    },
  );
}
