
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

InkWell DatePicker(BuildContext context) {
  return InkWell(
    onTap: ()
    {
      showModalBottomSheet(context: context, builder:(context) =>
          SizedBox(
            height: 200,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.dateAndTime,
              onDateTimeChanged: (value) {},
            ),
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
        child: Center(child: Text('Date Picker',
          style: TextStyle(color: Colors.white, fontSize: 25),)),
      ),
    ),
  );
}