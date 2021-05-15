import 'package:flutter/material.dart';
import 'package:personalizeguidanceforahealthyheart/Controllers/Auth/AuthController.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          onTap: () => AuthController().logout(context),
          child: Text('Home'),
        ),
      ),
    );
  }
}
