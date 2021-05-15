import 'dart:async';

import 'package:flutter/material.dart';
import 'package:personalizeguidanceforahealthyheart/Controllers/Common/SplashScreenController.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Strings.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Auth/Login.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Common/Home.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _timer;

  @override
  void initState() {
    super.initState();
    startApp();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Utils.displaySize = MediaQuery.of(context).size;

    return Container(
      color: UtilColors.primaryColor,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: UtilColors.primaryColor,
        body: Stack(
          children: [
            Align(
              child: Container(
                height: Utils.displaySize.width * 0.3,
                width: Utils.displaySize.width * 0.3,
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  UtilStrings.splashScreen1,
                  style: TextStyle(
                      color: UtilColors.whiteColor,
                      fontWeight: FontWeight.w400),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  void startApp() async {
    await SplashScreenController().checkAuth().then((value) {
      _timer = Timer.periodic(
          Duration(seconds: 3),
          (t) => Navigator.of(context, rootNavigator: true).pushReplacement(
                MaterialPageRoute(
                    builder: (_) => (value == true) ? Home() : Login()),
              ));
    });
  }
}
