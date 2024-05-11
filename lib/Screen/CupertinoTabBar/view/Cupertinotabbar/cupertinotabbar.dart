import 'package:adv_flutter_ch2/Screen/CupertinoTabBar/view/Cupertinoslider/cupertinoslider.dart';
import 'package:adv_flutter_ch2/uttils/tabbarliist.dart';
import 'package:flutter/cupertino.dart';

class Cupertino_screen extends StatelessWidget {
  const Cupertino_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Tab Bar'),
        trailing: CupertinoButton(
            onPressed: ()
            {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context) => Sllider_screen(),));
            },
            child: Icon(CupertinoIcons.settings)),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items:
        [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.phone)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.plus)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled)),
        ]
        ),
        tabBuilder: (context, index) {
          return Center(child: Text(tablist[index]['name'],));
        },

      ),
    );
  }
}
