import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';
import 'package:responsive_architecture/widgets/app_drawer/app_drawer_mobile.dart';
import 'package:responsive_architecture/widgets/app_drawer/app_drawer_tablet.dart';
import 'package:responsive_architecture/widgets/drawer_option/drawer_option.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ApppDrawerMobile(),
      tablet: OrientationLayout(
        portrait: (context) => AppDrawerTabletPortrait(),
        landscape: (context) => AppDrawerTabletLandscape(),
      )
    );
  }

  //method that will return to us the list of children that we want to display in these AppDrawers
  static List<Widget> getDrawerOptions() {
    return [
      DrawerOption(
        title: 'Images',
        iconData: Icons.image,
      ),
      DrawerOption(
        title: 'Reports',
        iconData: Icons.photo_filter,
      ),
      DrawerOption(
        title: 'Incidents',
        iconData: Icons.message,
      ),
      DrawerOption(
        title: 'Settings',
        iconData: Icons.settings
      )
    ];
  }
}