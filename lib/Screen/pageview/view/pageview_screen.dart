import 'package:adv_flutter_ch2/Screen/pageview/view/componets/intro_screen_1.dart';
import 'package:adv_flutter_ch2/Screen/pageview/view/componets/intro_screen_2.dart';
import 'package:adv_flutter_ch2/Screen/pageview/view/componets/intro_screen_3.dart';
import 'package:flutter/material.dart';

class Pageview extends StatelessWidget {
  const Pageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          intro_screen_1(),
          intro_screen_2(),
          intro_screen_3(),
        ],
      ),
    );
  }



}

