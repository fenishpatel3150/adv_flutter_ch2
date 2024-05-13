
import 'package:flutter/material.dart';

class navigation_provider extends ChangeNotifier
{
  int navigationindex=0;

  void navigation(int value)
  {
    navigationindex=value;
    notifyListeners();
  }
}