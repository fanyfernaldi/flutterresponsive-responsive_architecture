import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_architecture/datamodels/drawer_item_data.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';
import 'package:responsive_architecture/widgets/drawer_option/drawer_option_mobile.dart';
import 'package:responsive_architecture/widgets/drawer_option/drawer_option_tablet.dart';

class DrawerOption extends StatelessWidget {
  final String title;
  final IconData iconData;
  const DrawerOption({
    Key key,
    this.title,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: DrawerItemData(iconData: iconData, title: title), //DrawerItemData merupakan class model yg saya buat sendiri
      child: ScreenTypeLayout(
        mobile: OrientationLayout(
          landscape: (context) => DrawerOptionMobileLandscape( //ku komen karena udah pake provider, jd ngga passing data lewat konstruktor
            // iconData: iconData,
          ),
          portrait: (context) => DrawerOptionMobilePortrait(
            // title: title,
          ),
        ),
        tablet: OrientationLayout(
          portrait: (context) => DrawerOptionTabletPortrait(
            // iconData: iconData,
            // title: title,
          ),
          landscape: (context) => DrawerOptionMobilePortrait(
            // iconData: iconData,
            // title: title,
          ),
        ),
      ),
    );
  }
}