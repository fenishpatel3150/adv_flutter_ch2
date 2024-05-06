
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

InkWell Action_Sheet(BuildContext context) {
  return InkWell(
    onTap: ()
    {
      showModalBottomSheet(context: context, builder: (context) => CupertinoActionSheet(
        title: Column(
          children: [
            Text('Favorite Dessert'),
            SizedBox(height: 10,),
            Center(child: Text(
              'Please select the best dessert frome the\noption below.',
              style: TextStyle(color: Colors.grey),))
          ],
        ),
        actions: [
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
        cancelButton: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: Text('Cancel',
              style: TextStyle(color: Colors.white, fontSize: 20),))),
      ),);
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 320,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(child: Text('Action Sheet',
          style: TextStyle(color: Colors.white, fontSize: 25),)),
      ),
    ),
  );
}