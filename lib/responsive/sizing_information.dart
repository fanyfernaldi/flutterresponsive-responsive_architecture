import 'package:flutter/material.dart';
import 'package:responsive_architecture/enums/device_screen_type.dart';

// this model will be the information that we compile and send back to our builder function to build the appropriate UI
class SizingInformation {
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation({
    this.deviceScreenType,
    this.screenSize,
    this.localWidgetSize
  });

  @override
  String toString(){
    return 'DeviceType:$deviceScreenType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize';
  }
}