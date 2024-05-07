
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Matrialapp/commponets/container.dart';
import 'package:flutter/material.dart';

InkWell bottomsheet(BuildContext context) {
  return InkWell(
    onTap: (){
      showModalBottomSheet(
        context: context, builder: (context) => Column(
        children: [
          Container(
              height: 50,
              child: Center(child: Text("Profiteroles",
                style: TextStyle(color: Colors.blue, fontSize: 20),))),
          Divider(),
          Container(
              height: 50,
              child: Center(child: Text("Cannolis",
                style: TextStyle(color: Colors.blue, fontSize: 20),))),
          Divider(),
          Container(
              height: 50,
              child: Center(child: Text("Trifile",
                style: TextStyle(color: Colors.blue, fontSize: 20),))),
          InkWell(
            onTap: ()
            {
              Navigator.of(context).pop();
            },
            child: Container(
                height:50,
                width: 350,
                color: Colors.black,
                child: Center(child: Text('Cancel',style: TextStyle(color: Colors.white,fontSize: 25),))),
          ),
        ],
      ),);
    },
    child: matrialContainer("Bottom Sheet"),
  );
}