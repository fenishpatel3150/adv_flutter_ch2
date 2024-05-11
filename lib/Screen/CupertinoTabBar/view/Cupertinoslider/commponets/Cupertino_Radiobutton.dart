
import 'package:adv_flutter_ch2/Screen/CupertinoTabBar/provider/radio_provider.dart';
import 'package:flutter/cupertino.dart';

Row radiobutton(Radio_provider Radioprovider, Radio_provider Radioproviderfalse) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Radiobutton(Radioprovider, Radioproviderfalse, 0),
      SizedBox(
        width: 90,
      ),
      Radiobutton(Radioprovider, Radioproviderfalse, 1),
    ],
  );
}


Row Radiobutton(Radio_provider Radioprovider,
    Radio_provider Radioproviderfalse, int ring) {
  return Row(
    children: [
      CupertinoRadio(
          value: ring,
          groupValue: Radioprovider.radio,
          onChanged: (value) {
            Radioproviderfalse.changeradio(value!);
          })
    ],
  );
}