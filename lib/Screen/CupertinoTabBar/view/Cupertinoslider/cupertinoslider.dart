import 'package:adv_flutter_ch2/Screen/CupertinoTabBar/provider/Slider_Provider.dart';
import 'package:adv_flutter_ch2/Screen/CupertinoTabBar/provider/Switch_Provider.dart';
import 'package:adv_flutter_ch2/Screen/CupertinoTabBar/provider/radio_provider.dart';
import 'package:adv_flutter_ch2/Screen/CupertinoTabBar/view/Cupertinoslider/commponets/Cupertino_image.dart';
import 'package:adv_flutter_ch2/Screen/CupertinoTabBar/view/Cupertinosliding/sliding_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Sllider_screen extends StatelessWidget {
  const Sllider_screen({super.key});

  @override
  Widget build(BuildContext context) {
    final Radioprovider = Provider.of<Radio_provider>(context);
    final Radioproviderfalse = Provider.of<Radio_provider>(context, listen: false);
    final isswitchtrue=Provider.of<Switch_provider>(context);
    final isswitchfalse=Provider.of<Switch_provider>(context,listen: false);
    final switchtrue=Provider.of<isSwitch_provider>(context);
    final switchfalse=Provider.of<isSwitch_provider>(context,listen: false);
    final thisswitchtrue=Provider.of<switch_provider>(context);
    final thisswitchfalse=Provider.of<switch_provider>(context,listen: false);
    final isslidertrue=Provider.of<Slider_Provider>(context);
    final issliderfalse=Provider.of<Slider_Provider>(context,listen: false);

    return CupertinoPageScaffold(
      navigationBar:CupertinoNavigationBar(
          middle: Text('Display & Brightness'),
          trailing: CupertinoButton(onPressed: () {
            Navigator.of(context).push(CupertinoPageRoute(builder: (context) => Sliding_screen(),));
          },
          child: Icon(CupertinoIcons.right_chevron),

          ),
        ),
        child: SafeArea(
          child: CustomScrollView(
                slivers: [
          SliverFillRemaining(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CupertinoListSection(
                    header: Text('APPEARANCE'),
                    children: [
                      CupertinoListTile(
                          title: appearance(Radioprovider, Radioproviderfalse)),
                      CupertinoListTile(title:  Row(
                        children: [
                          Text('Automatic'),
                          Spacer(),
                          CupertinoSwitch(value: isswitchtrue.isswitch, onChanged: (value){
                            isswitchfalse.changeswitch(value);
                          }
                          ),
                        ],
                      ),),
                    ],
                  ),
                  CupertinoListSection(
                    header: Text('BRIGHTNESS'),
                    children: [
                      CupertinoListTile(
                          title: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(CupertinoIcons.sun_min,color: CupertinoColors.systemGrey,),
                                  SizedBox(
                                    width: 270,
                                    child: CupertinoSlider(
                                        min: 0,
                                        max: 100,
                                        value: isslidertrue.slider, onChanged: (value)
                                    {
                                      issliderfalse.changeslider(value);
                                    }),
                                  ),
                                  Icon(CupertinoIcons.sun_max_fill,color: CupertinoColors.systemGrey,),
              
                                ],
                              ),
                            ],
                          )),
                      CupertinoListTile(title:
                      Row(
                        children: [
                          Text('True Tone'),
                          Spacer(),
                          CupertinoSwitch(value: switchtrue.isswitch, onChanged: (value){
                            switchfalse.changeswitch(value);
                          }
                          ),
                        ],
                      )),
                    ],
                    footer: Text('Automatically adapt iphone display based on ambient lighting condition to make coloer appear consistent in diffrent enviroments. '),
                  ),
                  CupertinoListSection(
                  children: [
                    CupertinoListTile(title: Row(children: [
                      Text('Night Shift'),
                      Spacer(),
                      Text('Sunset to sunrise',style: TextStyle(color: CupertinoColors.inactiveGray),),
                      Icon(CupertinoIcons.right_chevron,color: CupertinoColors.inactiveGray,)
                    ],))
                  ],
                  ),
                  CupertinoListSection(
                  children: [
                    CupertinoListTile(title: Row(children: [
                      Text('Auto-Lock'),
                      Spacer(),
                      Text('3 Minutes',style: TextStyle(color: CupertinoColors.inactiveGray),),
                      Icon(CupertinoIcons.right_chevron,color: CupertinoColors.inactiveGray,)
                    ],)),
                    CupertinoListTile(title: Row(children: [
                      Text('Raise to Wake'),
                      Spacer(),
                        CupertinoSwitch(value: thisswitchtrue.isswitch, onChanged: (value){
                          thisswitchfalse.changeswitch(value);
                        }
                        ),
                          ],)),
                  ],
                  ),
                ],
              ),
            ),
          )
                ],
              ),
        ));
  }


}
