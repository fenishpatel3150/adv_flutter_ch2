import 'package:adv_flutter_ch2/Screen/CupertinoTabBar/provider/Sliding_provider.dart';
import 'package:adv_flutter_ch2/uttils/Slidinglist.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Sliding_screen extends StatelessWidget {
  const Sliding_screen({super.key});

  @override
  Widget build(BuildContext context) {
    final Slidingtrue= Provider.of<Sliding_provider>(context);
    final Slidingfalse= Provider.of<Sliding_provider>(context,listen: false);

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle:CupertinoSlidingSegmentedControl(
            groupValue: Slidingtrue.sliding.toString(),
            backgroundColor: CupertinoColors.black,
            thumbColor: CupertinoColors.systemBlue,
            children: {
              '0': Text('Head 1',style: TextStyle(color: CupertinoColors.white),),
              '1': Text('Head 2',style: TextStyle(color: CupertinoColors.white)),
              '2': Text('Head 3',style: TextStyle(color: CupertinoColors.white)),
            },
            onValueChanged:(value) {
              Slidingfalse.chngesliding(value!);
            },

          ),
        ),
        child: Center(child: Text(
          slide[Slidingtrue.sliding]
        )));
  }
}
