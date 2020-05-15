import 'package:flutter/material.dart';
import 'package:responsive_architecture/datamodels/drawer_item_data.dart';
import 'package:responsive_architecture/widgets/base_model_widget.dart';

class DrawerOptionTabletPortrait extends BaseModelWidget<DrawerItemData> {  //dulu saat ngga pake provider, kita nge-extendnya ke StatelessWidget
  // udah ngga dipake karena kita udah pake Provider
  // final String title;
  // final IconData iconData;
  // const DrawerOptionTabletPortrait({
  //   Key key,
  //   this.title,
  //   this.iconData,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context, DrawerItemData data) {
    return Container(
      width: 152,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            data.iconData,
            size: 45,
          ),
          Text(data.title, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}