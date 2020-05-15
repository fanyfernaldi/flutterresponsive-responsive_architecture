import 'package:flutter/material.dart';
import 'package:responsive_architecture/widgets/app_drawer/app_drawer.dart';

class HomeViewTablet extends StatelessWidget {
  const HomeViewTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //the cool thing about the tablet layout is that its either going to be a row or a column but the children will stay exactly the same
    var children = [
      Expanded(
        child: Container(),
      ),
      AppDrawer()
    ];
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
       body: orientation == Orientation.portrait ? 
       Column(
         children: children,
       ) :
       Row(children: children.reversed.toList())
    );
  }
}