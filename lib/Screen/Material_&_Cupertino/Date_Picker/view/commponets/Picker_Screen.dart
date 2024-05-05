import 'package:adv_flutter_ch2/Screen/Material_&_Cupertino/Date_Picker/view/commponets/Radio_Button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Row Picker(BuildContext context, IconData iconData, String name) {
  return Row(
    children: [
      InkWell(
          onTap: () async {
            if (iconData == Icons.calendar_month) {
              DateTime select = await showDatePicker(
                      context: context,
                      firstDate: DateTime(1947),
                      lastDate: DateTime(2024)) ??
                  DateTime.now();
            }
            else if (iconData == Icons.message) {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        actions: [
                          RadioButton(context, 'None',0),
                          RadioButton(context, 'Callisto',1),
                          RadioButton(context, 'Ganymede',2),
                          RadioButton(context, 'Luna',3),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close'),
                          ),
                        ],
                        title: Text('Phone ringtone'),
                      ));
            }
            else if (iconData == Icons.access_time_outlined) {
              showTimePicker(context: context, initialTime: TimeOfDay.now());
            }},
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(iconData,color: Colors.white,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(name, style: TextStyle(fontSize: 25,color: Colors.white),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    ],
  );
}
