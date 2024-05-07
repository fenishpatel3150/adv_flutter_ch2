
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Cupertino/cupertino_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoButton cupertino_list_tile(BuildContext context) {
  return CupertinoButton(
    child: cupertinowidgets("ListTile"),
    onPressed: () {
      showModalBottomSheet(context: context, builder: (context) => CupertinoListTile(title: Text('Ring')),);
    },
  );
}