import 'package:flutter/cupertino.dart';

class Sliding_provider extends ChangeNotifier
{
  int sliding=0;

  void chngesliding (String value)
  {
    sliding=int.parse(value);
    notifyListeners();
  }
}