import 'package:adv_flutter_ch2/Screen/Material_&_Cupertino/Date_Picker/view/commponets/Picker_Screen.dart';
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
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Date Picker',
                  style: TextStyle(color: Colors.white, fontSize: 25),)),
              ),
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.dateAndTime,
                  onDateTimeChanged: (value) {},
                ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Timer Picker',
                  style: TextStyle(color: Colors.white, fontSize: 25),)),
              ),
              SizedBox(
                height: 200,
                child: CupertinoTimerPicker(
                  onTimerDurationChanged: (Duration value) {},
                ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Action Sheet',
                  style: TextStyle(color: Colors.white, fontSize: 25),)),
              ),
              CupertinoActionSheet(
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
              ),
              SizedBox(height: 20,),
              Picker(context, Icons.calendar_month, 'Calender'),
              Picker(context, Icons.message, 'Dialogs Box'),
              Picker(context, Icons.access_time_outlined, 'Timer Picker'),
            ],
          ),
        ),
      ),
    );
  }
}
