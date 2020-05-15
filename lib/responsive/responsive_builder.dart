import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/sizing_information.dart';
import 'package:responsive_architecture/utils/ui_utils.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context, SizingInformation sizingInformation
  ) builder;
  const ResponsiveBuilder({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    
    // we want the size of the actual widget that is being built, so we use LayoutBuilder
    return LayoutBuilder(builder: (context, boxConstraints) {
      var sizingInformation = SizingInformation(
        deviceScreenType: getDeviceType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize: Size(boxConstraints.maxWidth, boxConstraints.maxHeight)
      );
      return builder(context, sizingInformation);
    });
  }
}