
import 'package:flutter/material.dart';

class platfrom_provider extends ChangeNotifier
{
    bool isswitch =true;

     void platswitch(bool value)
    {
      isswitch=value;
      notifyListeners();
    }
}