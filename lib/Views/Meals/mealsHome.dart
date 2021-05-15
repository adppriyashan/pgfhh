import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';
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
              Icons.schedule,
              color: Utils.whiteColor,
              size: 20.0,
            ),
            title: 'Schedule'),
        TabItem(
            icon: Icon(
              Icons.home,
              color: Utils.whiteColor,
              size: 20.0,
            ),
            title: 'Home'),
        TabItem(
            icon: Icon(
              Icons.history_edu,
              color: Utils.whiteColor,
              size: 20.0,
            ),
            title: 'History'),
        TabItem(
            icon: Icon(
              Icons.settings,
              color: Utils.whiteColor,
              size: 20.0,
            ),
            title: 'Settings'),
      ],
      initialActiveIndex: 2,
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
