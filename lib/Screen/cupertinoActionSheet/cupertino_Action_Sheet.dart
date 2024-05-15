import 'package:adv_flutter_ch2/Screen/CupertinoContextMenu/cupertino_context_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino_action_sheet extends StatelessWidget {
  const Cupertino_action_sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Action Sheet'),
        trailing: CupertinoButton(
            onPressed: ()
            {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) =>Context_menu() ,));
            },
            child: Icon(Icons.arrow_forward_ios_rounded)),
      ),
      child: CupertinoButton(onPressed: () {
        showCupertinoModalPopup(context: context, builder: (context) =>
          CupertinoActionSheet(
            title: Text('Favorite Dessert',style: TextStyle(color: Colors.redAccent),),
            message: Column(
              children: [
                Text('Please select the best dessert frome the\noption below.'),
                Divider(),
                Container(
                    height: 50,
                    child: Center(child: Text("Default Action ",
                      style: TextStyle(color: CupertinoColors.activeBlue,fontWeight: FontWeight.bold, fontSize: 20),))),
                Divider(),
                Container(
                    height: 50,
                    child: Center(child: Text("Normal Action",
                      style: TextStyle(color: CupertinoColors.activeBlue, fontSize: 20),))),
                Divider(),
                Container(
                    height: 50,
                    child: Center(child: Text("Destructive Action",
                      style: TextStyle(color:CupertinoColors.systemRed, fontSize: 20),))),
              ],
            ),
            cancelButton: CupertinoButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Center(child: Text('Cancel',style: TextStyle(color: CupertinoColors.black),))),
          )
          ,);
      },
      child: Center(child: Text('Action Sheet',style: TextStyle(color: CupertinoColors.black),)),

      ),
    );
  }
}
