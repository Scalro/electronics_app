import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListTileWidget extends StatelessWidget {
  String title, subTitle, trailingData;
  String imgurl;

  // ignore: use_key_in_widget_constructors
  ListTileWidget(
      {required this.title,
      required this.subTitle,
      required this.trailingData,
      required this.imgurl
      });
      
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 200,
        width: 100,
        decoration:
            BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(image: AssetImage(imgurl),
              fit: BoxFit.cover
              ),
              ),
      ),
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Text(trailingData),
    );
  }
}
