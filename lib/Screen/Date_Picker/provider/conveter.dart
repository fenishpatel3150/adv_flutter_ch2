import 'package:flutter/cupertino.dart';

class Plaform_convetor extends ChangeNotifier
{
  bool convetor =true;
  DateTime dateTime=DateTime.now();

   void chanageplat(bool value)
  {
    convetor=value;
    notifyListeners();
  }
  void Chnagedate (DateTime dateTime)
  {
    this.dateTime= dateTime;
    notifyListeners();
  }
}
