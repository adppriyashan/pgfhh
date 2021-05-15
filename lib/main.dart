import 'package:flutter/material.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Meals/mealsHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartApp(),
    );
  }
}

class StartApp extends StatefulWidget {
  StartApp({Key key}) : super(key: key);

  @override
  _StartAppState createState() => _StartAppState();
}

class _StartAppState extends State<StartApp> {
  @override
  Widget build(BuildContext context) {
    Utils.displaySize = MediaQuery.of(context).size;

    return FoodPredictHome();
  }
}
