
import 'dart:io';

import 'package:adv_flutter_ch2/Screen/Date_Picker/provider/conveter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Material_date_picker extends StatelessWidget {
  const Material_date_picker({super.key});

  @override
  Widget build(BuildContext context) {
  final platfromtrue= Provider.of<Plaform_convetor>(context);
  final platfromfalse= Provider.of<Plaform_convetor>(context,listen: false);
    if ((platfromtrue.convetor)) {
      return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker Android'),
        actions: [
          Switch(
            value: platfromtrue.convetor,
            onChanged: (value) {
              platfromfalse.chanageplat(value);
            },
          ),
        ],
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: ()
              async {
                DateTime dateTime = await showDatePicker(
                  context: context,
                  firstDate: DateTime(1947),
                  lastDate: DateTime(2024))
                    ??
                  DateTime.now();
                platfromfalse.Chnagedate(dateTime);
              },
              child: ListTile(
                title: Text('Date Picker'),
                subtitle: Text('${platfromtrue.dateTime.day} - ${platfromtrue.dateTime.month} - ${platfromtrue.dateTime.year}'),
              )

            ),
          ],
        ),
    );
    } else {
      return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('DatePicker Ios'),
        trailing: CupertinoSwitch(
          value: Provider.of<Plaform_convetor>(context, listen: true).convetor,
          onChanged: (value) {
            Provider.of<Plaform_convetor>(context, listen: false).chanageplat(value);
          },
        ),
      ),
      child: CupertinoButton(
        onPressed: () {
          showCupertinoModalPopup(context: context, builder: (context) => Container(
            height: 250,
            color: CupertinoColors.white,
            child: CupertinoDatePicker(
              mode:CupertinoDatePickerMode.date,
              onDateTimeChanged: (DateTime value) {
                platfromfalse.Chnagedate(value);
              },
            ),
          ),);

        }, child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoListTile(
            title: Text('DatePicker'),
            subtitle: Text('${platfromtrue.dateTime.day} - ${platfromtrue.dateTime.month} - ${platfromtrue.dateTime.year}'),
            ),
          ],
        ),
      ),
    );
    }}
}
