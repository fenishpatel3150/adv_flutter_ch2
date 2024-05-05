import 'package:flutter/cupertino.dart';

 class Changering_Provider extends ChangeNotifier
{
  int chnageringtoune =0;

  void radiobutton(int option)
  {
    chnageringtoune=option;
    notifyListeners();
  }

}
