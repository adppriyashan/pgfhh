import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Stress/Home%20Contents/stressHomeLayout.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Stress/Home%20Contents/stressSchedule.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Stress/Home%20Contents/stressSettings.dart';

class StressPredictHome extends StatefulWidget {
  StressPredictHome({Key key}) : super(key: key);

  @override
  _StressPredictHomeState createState() => _StressPredictHomeState();
}

class _StressPredictHomeState extends State<StressPredictHome> {
  int _selectedIndex = 1;

  List<Widget> _layouts = [
    StressPredictScheduleLayout(),
    StressPredictHomeLayout(),
    StressPredictSettingsLayout()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: getBottomNavBar(),
      backgroundColor: Utils.primaryColor,
      body: _layouts[_selectedIndex],
    ));
  }

  Widget getBottomNavBar() {
    return ConvexAppBar(
      items: [
        TabItem(
            icon: Icon(
              Icons.calculate,
              color: Utils.whiteColor,
              size: 20.0,
            ),
            title: 'Calculate'),
        TabItem(
            icon: Icon(
              Icons.home,
              color: Utils.whiteColor,
              size: 20.0,
            ),
            title: 'Home'),
        TabItem(
            icon: Icon(
              Icons.settings,
              color: Utils.whiteColor,
              size: 20.0,
            ),
            title: 'Settings'),
      ],
      initialActiveIndex: 1,
      activeColor: Utils.primaryColor,
      backgroundColor: Utils.blackColor,
      color: Utils.whiteColor.withOpacity(0.8),
      onTap: (_tab) {
        setState(() {
          print(_tab);
          _selectedIndex = _tab;
        });
      },
    );
  }
}
