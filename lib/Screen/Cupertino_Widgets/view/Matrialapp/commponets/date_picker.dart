
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Matrialapp/commponets/container.dart';
import 'package:flutter/material.dart';

InkWell datepicker(BuildContext context) {
  return InkWell(
    onTap: ()
    async {  DateTime select = await showDatePicker(
        context: context,
        firstDate: DateTime(1947),
        lastDate: DateTime(2024)) ??
        DateTime.now();
    },
    child: matrialContainer("Date Picker"),
  );
}