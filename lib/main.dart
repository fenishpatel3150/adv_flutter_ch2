import 'package:adv_flutter_ch2/Screen/CupertinoTabBar/provider/Slider_Provider.dart';
import 'package:adv_flutter_ch2/Screen/CupertinoTabBar/provider/Sliding_provider.dart';
import 'package:adv_flutter_ch2/Screen/CupertinoTabBar/provider/radio_provider.dart';
import 'package:adv_flutter_ch2/Screen/CupertinoTabBar/view/Cupertinotabbar/cupertinotabbar.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/provider/platfrom.dart';
import 'package:adv_flutter_ch2/Screen/Material_&_Cupertino/Date_Picker/provider/Picker_Provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screen/CupertinoTabBar/provider/Switch_Provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create:(context) => Changering_Provider(),),
      ChangeNotifierProvider(create:(context) => platfrom_provider(),),
      ChangeNotifierProvider(create:(context) => Radio_provider(),),
      ChangeNotifierProvider(create:(context) => Switch_provider(),),
      ChangeNotifierProvider(create:(context) => switch_provider(),),
      ChangeNotifierProvider(create:(context) => isSwitch_provider(),),
      ChangeNotifierProvider(create:(context) => Slider_Provider(),),
      ChangeNotifierProvider(create:(context) => Sliding_provider(),),
    ],
    child: const
    MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  CupertinoApp(
      debugShowCheckedModeBanner: false,
      home:Cupertino_screen(),
      //Sliver_Screen(),
    );
    // Adaptive_screen();
  }
}
