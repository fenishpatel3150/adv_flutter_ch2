import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/provider/platfrom.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Matrialapp/commponets/Indicator_screen.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Matrialapp/commponets/List_Tile.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Matrialapp/commponets/Time_picker.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Matrialapp/commponets/alrtdialog.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Matrialapp/commponets/bottom_sheet.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Matrialapp/commponets/button_screen.dart';
import 'package:adv_flutter_ch2/Screen/Cupertino_Widgets/view/Matrialapp/commponets/date_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Matrial_Screen extends StatelessWidget {
  const Matrial_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Matrial Widgets',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Switch(
            value: Provider.of<platfrom_provider>(context, listen: true)
                .isswitch,
            onChanged: (bool value) {
              Provider.of<platfrom_provider>(context, listen: false)
                  .platswitch(value);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            bottomsheet(context),
            Indicator(context),
            alertdialog(context),
            button_screen(),
            datepicker(context),
            Timepicker(context),
            list_tile(context)
          ],
        ),
      ),
    );
  }
}
