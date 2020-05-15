import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
// import 'package:responsive_architecture/responsive/responsive_builder.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';
import 'package:responsive_architecture/viewmodels/home_view_model.dart';
import 'package:responsive_architecture/views/home/home_view_mobile.dart';
import 'package:responsive_architecture/views/home/home_view_tablet.dart';
import 'package:responsive_architecture/widgets/base_widget.dart';

// class HomeView extends StatelessWidget {
//   const HomeView({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ResponsiveBuilder(
//       builder: (context, sizingInformation) {
//         return Scaffold(
//           body: Center(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 Container(
//                   height: 150,
//                   margin: const EdgeInsets.all(50),
//                   color: Colors.blue,
//                   child: ResponsiveBuilder(builder: (context, sizingInfo) => Text(sizingInfo.toString()),)                  
//                 ),
//                 Text(sizingInformation.toString()),
//               ],
//             ),
//           )
//         ); 
//       },
//     );
//   }
// }

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) => model.initialize(),
      builder: (context) => ScreenTypeLayout(
        mobile: OrientationLayout(
          portrait: (context) => HomeMobilePortrait(),
          landscape: (context) => HomeMobileLandscape(),
        ),
        tablet: HomeViewTablet(),
      ),
    );
  }
}