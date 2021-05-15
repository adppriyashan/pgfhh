import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalizeguidanceforahealthyheart/Controllers/Common/SplashScreenController.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Images.dart';
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

    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: Utils.getGradientBackground(),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: Utils.displaySize.width * 0.3,
                    width: Utils.displaySize.width * 0.3,
                    child: SvgPicture.asset(UtilImages.wlogoSVG),
                  ),
                  Text(
                    UtilStrings.appTitle,
                    style: GoogleFonts.openSans(
                        color: UtilColors.whiteColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 35.0),
                  ),
                  Text(
                    UtilStrings.appSubtitle,
                    style: GoogleFonts.openSans(
                      color: UtilColors.whiteColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  UtilStrings.splashScreen,
                  style: GoogleFonts.openSans(
                      color: UtilColors.whiteColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0),
                ),
              ),
            )
          ],
        ),
      ),
    ));
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
