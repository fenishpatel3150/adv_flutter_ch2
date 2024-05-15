




import 'package:adv_flutter_ch2/uttils/contextmenu_image_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Context_menu extends StatelessWidget {
  const Context_menu({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Gallery'),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 18,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 100,
                ), itemBuilder: (context, index) =>image(profileimage[index]['image'],profileimage[index]['name'],profileimage[index]['num']) ,),

            ],
          ),
        ),
      ),
    );
  }
  Widget image(String i1,String name, int num) {
    return Column(
      children: [
          CupertinoContextMenu(actions: [
            CupertinoContextMenuAction(
              trailingIcon: CupertinoIcons.doc_on_doc_fill,
              child: Text('Copy'),),
            CupertinoContextMenuAction(
                trailingIcon: CupertinoIcons.share,
                child: Text('Share')),
            CupertinoContextMenuAction(
                trailingIcon: CupertinoIcons.heart,
                child: Text('Favorite')),
            CupertinoContextMenuAction(
                trailingIcon: CupertinoIcons.delete,
                child: Text('Delete',style: TextStyle(color: CupertinoColors.systemRed),)),
          ], child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image:AssetImage(i1),fit: BoxFit.cover)
            ),
          ),
        )

      ],
    );
  }
}