import 'package:adv_flutter_ch2/Screen/Material_&_Cupertino/Date_Picker/view/commponets/Action_Sheet.dart';
import 'package:adv_flutter_ch2/Screen/Material_&_Cupertino/Date_Picker/view/commponets/DatePicker.dart';
import 'package:adv_flutter_ch2/Screen/Material_&_Cupertino/Date_Picker/view/commponets/Picker_Screen.dart';
import 'package:adv_flutter_ch2/Screen/Material_&_Cupertino/Date_Picker/view/commponets/timer_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Date_Picker extends StatelessWidget {
  const Date_Picker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Picker', style: TextStyle(color: Colors.white, fontSize: 25),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Picker(context, Icons.calendar_month, 'Calender'),
              Picker(context, Icons.message, 'Dialogs Box'),
              Picker(context, Icons.access_time_outlined, 'Timer Picker'),

              DatePicker(context),
              TimerPicker(context),
              Action_Sheet(context),
            ],
          ),
        ),
      ),
    );
  }



}
