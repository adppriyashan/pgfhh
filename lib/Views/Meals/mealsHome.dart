import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Meals/Home%20Contents/mealsHomeCalculate.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Meals/Home%20Contents/mealsHistory.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Meals/Home%20Contents/mealsHomeLayout.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Meals/Home%20Contents/mealsShedule.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Meals/Home%20Contents/mealsHomeSettings.dart';

class FoodPredictHome extends StatefulWidget {
  FoodPredictHome({Key key}) : super(key: key);

  @override
  _FoodPredictHomeState createState() => _FoodPredictHomeState();
}

class _FoodPredictHomeState extends State<FoodPredictHome> {
  int _selectedIndex = 2;

  List<Widget> _layouts = [
    FoodPredictCalculateLayout(),
    FoodPredictScheduleLayout(),
    FoodPredictHomeLayout(),
    FoodPredictHistoryLayout(),
    FoodPredictSettingsLayout()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: getBottomNavBar(),
      backgroundColor: UtilColors.primaryColor,
      body: _layouts[_selectedIndex],
    ));
  }

  Widget getBottomNavBar() {
    return ConvexAppBar(
      items: [
        TabItem(
            icon: Icon(
              Icons.calculate,
              color: UtilColors.whiteColor,
              size: 20.0,
            ),
            title: 'Calculate'),
        TabItem(
            icon: Icon(
              Icons.schedule,
              color: UtilColors.whiteColor,
              size: 20.0,
            ),
            title: 'Schedule'),
        TabItem(
            icon: Icon(
              Icons.home,
              color: UtilColors.whiteColor,
              size: 20.0,
            ),
            title: 'Home'),
        TabItem(
            icon: Icon(
              Icons.history_edu,
              color: UtilColors.whiteColor,
              size: 20.0,
            ),
            title: 'History'),
        TabItem(
            icon: Icon(
              Icons.settings,
              color: UtilColors.whiteColor,
              size: 20.0,
            ),
            title: 'Settings'),
      ],
      initialActiveIndex: 2,
      activeColor: UtilColors.primaryColor,
      backgroundColor: UtilColors.blackColor,
      color: UtilColors.whiteColor.withOpacity(0.8),
      onTap: (_tab) {
        setState(() {
          print(_tab);
          _selectedIndex = _tab;
        });
      },
    );
  }
}
