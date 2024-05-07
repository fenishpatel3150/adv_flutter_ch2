
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Matrialapp/commponets/container.dart';
import 'package:flutter/material.dart';

InkWell list_tile(BuildContext context) {
  return InkWell(
    onTap: ()
    {
      showModalBottomSheet(context: context, builder:(context) => Column(
        children: [
          SizedBox(height: 10,),
          ListTile(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.add),
              title: Text('Jack')),
          ListTile(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.add),
              title: Text('Archie')),
          ListTile(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.add),
              title: Text('Jake')),
          ListTile(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.add),
              title: Text('Sparrow')),
          ListTile(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.add),
              title: Text('James')),
        ],
      ) , );

    },
    child:matrialContainer("List Tile"),
  );
}