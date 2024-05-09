import 'package:adv_flutter_ch2/Screen/Sliver/view/setting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sliver_Screen extends StatelessWidget {
  const Sliver_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      
        child: CustomScrollView(
         slivers: [
        CupertinoSliverNavigationBar(
          trailing: CupertinoButton(
              onPressed: ()
              {
                Navigator.of(context).push(CupertinoPageRoute(builder: (context) => SettingScreen(),));
              },
              child: Icon(CupertinoIcons.settings)),
          stretch: true,
          largeTitle:
              Text('My People', style: TextStyle(color: CupertinoColors.black)),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("People $index \n $index"),
            );
          },
          childCount: 21,
        ))
      ],
    ));
  }
}
