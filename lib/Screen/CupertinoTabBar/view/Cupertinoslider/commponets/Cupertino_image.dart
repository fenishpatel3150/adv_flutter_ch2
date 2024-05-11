import 'package:adv_flutter_ch2/Screen/CupertinoTabBar/provider/radio_provider.dart';
import 'package:adv_flutter_ch2/Screen/CupertinoTabBar/view/Cupertinoslider/commponets/Cupertino_Radiobutton.dart';
import 'package:flutter/cupertino.dart';

Column appearance(
    Radio_provider Radioprovider, Radio_provider Radioproviderfalse) {
  return Column(
    children: [
      SizedBox(
        height: 16,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 120,
            width: 60,
            decoration: BoxDecoration(
                color: CupertinoColors.black,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/phone1.jpeg'), fit: BoxFit.fill)),
          ),
          SizedBox(
            width: 50,
          ),
          Container(
            height: 120,
            width: 60,
            decoration: BoxDecoration(
                color: CupertinoColors.black,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/phone2.jpeg'), fit: BoxFit.fill)),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Light'),
          SizedBox(
            width: 80,
          ),
          Text('Dark'),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      radiobutton(Radioprovider, Radioproviderfalse),
      SizedBox(
        height: 16,
      ),
    ],
  );
}
