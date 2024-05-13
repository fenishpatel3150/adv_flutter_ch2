import 'package:adv_flutter_ch2/Screen/Bottomnavigationbar/provider/bottomnavigationbar_provider.dart';
import 'package:adv_flutter_ch2/uttils/Slidinglist.dart';
import 'package:adv_flutter_ch2/uttils/tabbarliist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Tab_bar_screen extends StatelessWidget {
  const Tab_bar_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigatonBar'),

      ),
      body: Center(
        child: Consumer<navigation_provider>(builder: (BuildContext context, navigation_provider value, Widget? child) {
          return Text(navigation[Provider.of<navigation_provider>(context).navigationindex]);
        },



        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: Provider
            .of<navigation_provider>(context, listen: true)
            .navigationindex,
        onTap: (value) {
          Provider.of<navigation_provider>(context, listen: false).navigation(
              value);
        },
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.chat),
              label: 'Chat',
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),
              label: 'Like',
              backgroundColor: Colors.cyan),
          BottomNavigationBarItem(icon: Icon(Icons.phone),
              label: 'Phone',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.orange),
        ],

      ),
    );
  }
}
