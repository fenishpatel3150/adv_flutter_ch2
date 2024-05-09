import 'package:adv_flutter_ch2/Adaptive/Adaptive_screen.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/provider/platfrom.dart';
import 'package:adv_flutter_ch2/Screen/Material_&_Cupertino/Date_Picker/provider/Picker_Provider.dart';
import 'package:adv_flutter_ch2/Screen/Sliver/view/sliver_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create:(context) => Changering_Provider(),),
      ChangeNotifierProvider(create:(context) => platfrom_provider(),),
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
      home: Sliver_Screen(),
    );
    // Adaptive_screen();
  }
}
