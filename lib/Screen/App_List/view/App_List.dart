import 'package:flutter/material.dart';

class Applist extends StatelessWidget {
  const Applist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Application List',style: TextStyle(color: Colors.white),),
      ),
      body: ListWheelScrollView(
        itemExtent: 120,
        children: [

        ],
      ),
    );
  }
}
