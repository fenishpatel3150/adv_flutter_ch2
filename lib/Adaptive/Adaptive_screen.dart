import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/provider/platfrom.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Cupertino/cupertino_widgets.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Matrialapp/Matrial_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Adaptive_screen extends StatelessWidget {
  const Adaptive_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider.of<platfrom_provider>(context, listen: true)
        .isswitch ? MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Matrial_Screen(),
    ):CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: cupertino_widgets(),
    );
  }
}
