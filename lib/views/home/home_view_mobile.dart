/// Contains the widget that will be used for Mobile layout of home,
/// portrait and landscape

import 'package:flutter/material.dart';
import 'package:responsive_architecture/viewmodels/home_view_model.dart';
import 'package:responsive_architecture/widgets/app_drawer/app_drawer.dart';
import 'package:responsive_architecture/widgets/base_model_widget.dart';

class HomeMobilePortrait extends BaseModelWidget<HomeViewModel> { //dulu pas belum pake Provider, kita nge-extends StatelessWidget
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),  //AppDrawer merupakan widget yang saya buat sendiri
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          model.updateTitle();
        },
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: IconButton(
                icon: Icon(Icons.menu, size: 30,),
                onPressed: () {
                  _scaffoldKey.currentState.openDrawer();
                },
              ),
            ),
            Expanded(
              child: Center(
                child: Text(model.title),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeMobileLandscape extends BaseModelWidget<HomeViewModel> { //dulu pas belum pake Provider, kita nge-extends StatelessWidget
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      body: Row(children: <Widget>[
        AppDrawer(), Expanded(child: Center(child: Text(model.title)))
      ],)
    );
  }
}