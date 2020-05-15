import 'package:flutter/material.dart';
import 'package:responsive_architecture/datamodels/drawer_item_data.dart';
import 'package:responsive_architecture/widgets/base_model_widget.dart';

//to show off the actual state management solution and how will be passing our data down 
//you can remove all the properties from the constructor as well as the constructor itself
//and then we'll extends from the BaseModelWidget and we'll pass the type DrawerItemData
class DrawerOptionMobilePortrait extends BaseModelWidget<DrawerItemData> {  //sebelum pake provider kita nge-extendsnya ke StatelessWidget
  // udah ngga dipake karena kita pake provider, jadi ngga usah passing2 ke konstruktor
  // final String title;
  // final IconData iconData;
  // const DrawerOptionMobilePortrait({
  //   Key key,
  //   this.title,
  //   this.iconData,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context, DrawerItemData data) {
    return Container(
      padding: const EdgeInsets.only(left: 25),
      height: 80,
      color: Colors.blue,
      child: Row(
        children: <Widget>[
          Icon(data.iconData, size: 25,),
          SizedBox(width: 25,),
          Text(data.title, style: TextStyle(fontSize: 21))
        ],
      ),
    );
  }
}

//to get all the errors to go away and give us a preview will create all the widgets for the options so we also create DrawerOptionMobilLandscape widget

class DrawerOptionMobileLandscape extends BaseModelWidget<DrawerItemData> { //sebelum pake provider, kita nge-extendsnya ke StatelessWidget
  // udah ngga dipake karena kita udah pake Provider
  // final IconData iconData;
  // const DrawerOptionMobileLandscape({Key key, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context, DrawerItemData data) {
    return Container(
      height: 70,
      alignment: Alignment.center,
      child: Icon(data.iconData),
    );
  }
}