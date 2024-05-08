import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Cupertino/cupertino_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoButton cupertino_list_tile(BuildContext context) {
  return CupertinoButton(
    child: cupertinowidgets("ListTile"),
    onPressed: () {
      showCupertinoModalPopup(
        context: context,
        builder: (context) => Container(
            height: 200,
            color: CupertinoColors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CupertinoListTile(
                      leading: Icon(CupertinoIcons.person),
                      trailing: Icon(CupertinoIcons.add),
                      title: Text('Jack')),
                  CupertinoListTile(
                      leading: Icon(CupertinoIcons.person),
                      trailing: Icon(CupertinoIcons.add),
                      title: Text('Archie')),
                  CupertinoListTile(
                      leading: Icon(CupertinoIcons.person),
                      trailing: Icon(CupertinoIcons.add),
                      title: Text('Jake')),
                  CupertinoListTile(
                      leading: Icon(CupertinoIcons.person),
                      trailing: Icon(CupertinoIcons.add),
                      title: Text('Sparrow')),
                  CupertinoListTile(
                      leading: Icon(CupertinoIcons.person),
                      trailing: Icon(CupertinoIcons.add),
                      title: Text('James')),
              
                ],
              ),
            )),
      );
    },
  );
}
