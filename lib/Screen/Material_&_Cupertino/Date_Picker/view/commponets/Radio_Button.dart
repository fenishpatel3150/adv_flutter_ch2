import 'package:adv_flutter_ch2/Screen/Material_&_Cupertino/Date_Picker/provider/Picker_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

RadioMenuButton<int> RadioButton(BuildContext context, String name,int ring) {
  return RadioMenuButton
    (
    value: ring,
    groupValue: Provider.of<Changering_Provider>(context, listen: true).chnageringtoune,
    onChanged: (value) {
      Provider.of<Changering_Provider>(context, listen: false).radiobutton(value!);
    },
    child: Text(name),
  );
}


