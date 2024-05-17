
import 'package:adv_flutter_ch2/Screen/Date_Picker/provider/conveter.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Cupertino_date_picker extends StatelessWidget {
  const Cupertino_date_picker({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: CupertinoSwitch(
          value: Provider.of<Plaform_convetor>(context, listen: true).convetor,
          onChanged: (value) {
            Provider.of<Plaform_convetor>(context, listen: false).chanageplat(value);
          },
        ),
      ),
        child: CupertinoButton(
        onPressed: () {
          showCupertinoModalPopup(context: context, builder: (context) => Container(
            height: 250,
            color: CupertinoColors.white,
            child: CupertinoDatePicker(
              mode:CupertinoDatePickerMode.dateAndTime,
              onDateTimeChanged: (DateTime value) {},
            ),
          ),);

        }, child: Center(child: Text("DatePicker")),
            ),
      );
  }
}
