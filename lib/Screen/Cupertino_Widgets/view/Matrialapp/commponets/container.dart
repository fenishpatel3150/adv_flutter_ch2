
import 'package:flutter/material.dart';

Widget matrialContainer(String name) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      height: 50,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(child: Text(name,style: TextStyle(color: Colors.white,fontSize: 20),),),
    ),
  );
}