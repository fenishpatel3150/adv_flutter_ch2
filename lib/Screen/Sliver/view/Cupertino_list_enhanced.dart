import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Enhanced_screen extends StatelessWidget {
  const Enhanced_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              // middle: Text('Cupertino List Enhanced' ),
              largeTitle: Text(
                'Cupertino List Enhanced',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SliverFillRemaining(
              child: Column(
                children: [
                  CupertinoListSection(
                      header: Text('SINGLE SELECTION'),
                      footer: Text('Choose a Single item from a list of options.'),
                      children: [
                        CupertinoListTile(
                          title: Text('Off'),
                          trailing: Icon(CupertinoIcons.check_mark),
                        ),
                        CupertinoListTile(
                          title: Text('Wi-Fi'),
                        ),
                        CupertinoListTile(
                          title: Text(
                            'Mobile Data',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ]),
                  CupertinoListSection(
                    header: Text('MULTI SELECTION'),
                    footer: Text('Choose multiple  items from a list of options.'),
                    children: [
                      CupertinoListTile(
                        title: Text('Option One'),
                        leading: Icon(CupertinoIcons.check_mark),
                        subtitle: Text('Disabled and selected'),
                      ),
                      CupertinoListTile(
                        padding: EdgeInsets.only(left: 62),
                        title: Text('Option two'),
                        subtitle: Text('With subtitle'),
                      ),
                      CupertinoListTile(

                        title: Text('Option three'),
                        leading: Icon(CupertinoIcons.check_mark),
                      ),
                      CupertinoListTile(
                        padding: EdgeInsets.only(left: 62),
                        title: Text('Option four'),
                      ),
                      CupertinoListTile(
                        padding: EdgeInsets.only(left: 62),
                        title: Text('Option two'),
                        subtitle: Text('With subtitle',style:TextStyle(color: Colors.grey),),
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
