import 'package:adv_flutter_ch2/Screen/Sliver/view/Cupertino_list_enhanced.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          middle: Text('Settings'),
          largeTitle: Text(
            'Setting',
            style: TextStyle(fontSize: 20),
          ),
          trailing: CupertinoButton(
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => Enhanced_screen(),
                ));
              },
              child: Icon(CupertinoIcons.list_bullet_indent)),
        ),
        SliverFillRemaining(
          child: Column(
            children: [
              CupertinoListSection(
                children: [
                  CupertinoListTile(
                    title: Text('General'),
                    trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
                    leading: Image.asset('assets/image1.jpeg'),
                  ),
                  CupertinoListTile(
                    title: Text('Display & Brightness'),
                    trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey),
                    leading: Image.asset('assets/star.jpeg'),
                  ),
                  CupertinoListTile(
                    title: Text('Wallpaper'),
                    trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey),
                    leading: Image.asset('assets/walpaper.jpeg'),
                  ),
                  CupertinoListTile(
                    title: Text('Sounds'),
                    trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey),
                    leading: Image.asset('assets/sound.jpeg'),
                  ),
                  CupertinoListTile(
                    title: Text('Touch ID & Passcode'),
                    trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey),
                    leading: Image.asset('assets/fingerprint.jpeg'),
                  ),
                  CupertinoListTile(
                    title: Text('Privacy'),
                    trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey),
                    leading: Image.asset('assets/hand.jpeg'),
                  ),
                ],
              ),
              CupertinoListSection(
                children: [
                  CupertinoListTile(
                    title: Text('iCloud'),
                    trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey),
                    leading: Image.asset('assets/icloud.jpeg'),
                    subtitle: Text('sarah@9to5mac.com',style: TextStyle(color: Colors.grey),),
                  ),
                  CupertinoListTile(
                    title: Text('iTunes & App Store'),
                    trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey),
                    leading: Image.asset('assets/appstore.jpeg'),
                   ),
                  CupertinoListTile(
                    title: Text('Passbook & Apple Pay'),
                    trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey),
                    leading: Image.asset('assets/book.jpeg'),
                  ),
                ],
              ),
              CupertinoListSection(
                children: [
                  CupertinoListTile(title: Text('Mail, Contacts, Calendars'),
                    trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey),
                    leading: Image.asset('assets/icloud.jpeg'),
                  ),
                  CupertinoListTile(title: Text('Notes'),
                    trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey),
                    leading: Image.asset('assets/note.jpeg'),
                  ),
                  CupertinoListTile(title: Text('Reminder'),
                    trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey),
                    leading: Image.asset('assets/reminder.jpeg'),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
