
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Matrialapp/commponets/container.dart';
import 'package:flutter/material.dart';

InkWell Timepicker(BuildContext context) {
  return InkWell(
    onTap: (){
      showTimePicker(context: context, initialTime: TimeOfDay.now());
    },
    child: matrialContainer("Time Picker"),
  );
}