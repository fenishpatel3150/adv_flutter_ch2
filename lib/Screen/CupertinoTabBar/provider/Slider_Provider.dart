import 'package:flutter/cupertino.dart';

class Slider_Provider extends ChangeNotifier
{
  double slider=0;

  void changeslider(double value)
  {
    slider=value;
    notifyListeners();
  }
}