import 'package:flutter/cupertino.dart';

class Radio_provider extends ChangeNotifier
{

  int radiobotton=0;
  int radio=0;

  void changeradio(int value)
  {
    radio=value;
    notifyListeners();
  }
}
