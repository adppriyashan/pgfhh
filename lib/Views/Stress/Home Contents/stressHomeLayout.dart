import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Stress/stressGraph.dart';

class StressPredictHomeLayout extends StatefulWidget {
  StressPredictHomeLayout({Key key}) : super(key: key);

  @override
  _StressPredictHomeLayoutState createState() =>
      _StressPredictHomeLayoutState();
}

class _StressPredictHomeLayoutState extends State<StressPredictHomeLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                      color: UtilColors.whiteColor,
                      borderRadius: BorderRadius.circular(100.0)),
                  child: Icon(
                    Icons.notifications_active,
                    color: UtilColors.primaryColor,
                  ),
                ),
                Text(
                  'Welcome back !'.toUpperCase(),
                  style: GoogleFonts.openSans(
                      color: UtilColors.whiteColor, fontWeight: FontWeight.w600),
                ),
                Container(
                  padding: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                      color: UtilColors.whiteColor,
                      borderRadius: BorderRadius.circular(100.0)),
                  child: SizedBox(
                    width: 23.0,
                    height: 23.0,
                    child: Image.asset('assets/img/user_sample.png'),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: SizedBox(
                    width: Utils.displaySize.width * 0.6,
                    height: Utils.displaySize.width * 0.5,
                    child: Image.asset('assets/img/stress_home_img1.png'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  decoration: BoxDecoration(
                      color: UtilColors.primaryColor,
                      border: Border.all(color: UtilColors.whiteColor),
                      borderRadius: BorderRadius.circular(10.0)),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: Text(
                    'Click here to reduce your stress'.toUpperCase(),
                    style: GoogleFonts.openSans(
                        fontSize: Utils.smallFonts,
                        color: UtilColors.whiteColor,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 20.0, bottom: 20.0, left: 10.0, right: 20.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: UtilColors.blackColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'stress balancing activities'.toUpperCase(),
                            style: GoogleFonts.openSans(
                                color: UtilColors.whiteColor, fontSize: 15.0),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(bottom: 10.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: UtilColors.blackColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: SizedBox(
                                  height: Utils.displaySize.width * 0.1,
                                  width: Utils.displaySize.width * 0.1,
                                  child: Image.asset(
                                      'assets/img/stress_activity1.png'),
                                ),
                              ),
                              Text(
                                'Meditation'.toUpperCase(),
                                style: GoogleFonts.openSans(
                                    color: UtilColors.whiteColor, fontSize: 15.0),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(bottom: 10.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: UtilColors.blackColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: SizedBox(
                                  height: Utils.displaySize.width * 0.1,
                                  width: Utils.displaySize.width * 0.1,
                                  child: Image.asset(
                                      'assets/img/stress_activity1.png'),
                                ),
                              ),
                              Text(
                                'Watching Movies'.toUpperCase(),
                                style: GoogleFonts.openSans(
                                    color: UtilColors.whiteColor, fontSize: 15.0),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 20.0, bottom: 20.0, left: 10.0, right: 20.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: UtilColors.blackColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'statistics'.toUpperCase(),
                            style: GoogleFonts.openSans(
                                color: UtilColors.whiteColor, fontSize: 15.0),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        HomeStressGraph()
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
