import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/provider/platfrom.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Cupertino/commponets/Action_Sheet.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Cupertino/commponets/Activity_Indicator.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Cupertino/commponets/Alert_Dialog_box.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Cupertino/commponets/cupertino_button.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Cupertino/commponets/cupertino_date_picker.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Cupertino/commponets/cupertino_list_tile.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Cupertino/commponets/cupertino_timer_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cupertino_widgets extends StatelessWidget {
  const cupertino_widgets({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
        navigationBar: CupertinoNavigationBar(
          backgroundColor: Colors.black,
          middle: Text('Cupertino Widgets',
            style: TextStyle(color: CupertinoColors.white),
          ),
          trailing: CupertinoSwitch(
            value: Provider.of<platfrom_provider>(context, listen: true)
                .isswitch,
            onChanged: (value) {
              Provider.of<platfrom_provider>(context, listen: false).platswitch(value);
            },
          ),
        ),
        child: Column(
          children: [
            actionsheet(context),
            activityIndicator(context),
            alertdialogbox(context),
            cupertino_button(),
            cupertinodatepicker(context),
            cupertino_timer_picker(context),
            cupertino_list_tile(context),
          ],
        ));
  }
}

Widget cupertinowidgets(String name) {
  return Container(
    height: 50,
    width: 350,
    decoration: BoxDecoration(
        color: CupertinoColors.black, borderRadius: BorderRadius.circular(5)),
    child: Center(
        child: Text(
      name,
      style: TextStyle(color: Colors.white, fontSize: 19),
    )),
  );
}
