import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Common/HomeDrawer.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Stress/stressGraph.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: HomeDrawer(),
      ),
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              width: Utils.displaySize.width,
              height: Utils.displaySize.height,
              decoration: Utils.getGradientBackground(),
            ),
            Container(
              width: Utils.displaySize.width,
              height: Utils.displaySize.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (_scaffoldKey.currentState.isDrawerOpen)
                              _scaffoldKey.currentState.openEndDrawer();
                            else {
                              _scaffoldKey.currentState.openDrawer();
                            }
                          },
                          child: Icon(
                            Icons.menu,
                            color: UtilColors.whiteColor,
                          ),
                        ),
                        Text(
                          'Welcome back !'.toUpperCase(),
                          style: GoogleFonts.openSans(
                              color: UtilColors.whiteColor,
                              fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.person_outline,
                          color: UtilColors.whiteColor,
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          child: SizedBox(
                            width: Utils.displaySize.width * 0.8,
                            height: Utils.displaySize.width * 0.8,
                            child: CircularPercentIndicator(
                              radius: Utils.displaySize.width * 0.7,
                              lineWidth: 30.0,
                              percent: 0.5,
                              center: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'YOUR RISK LEVEL IS'.toUpperCase(),
                                    style: GoogleFonts.openSans(
                                        fontSize: 9,
                                        color: UtilColors.whiteColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'NORMAL'.toUpperCase(),
                                    style: GoogleFonts.openSans(
                                        fontSize: 28.0,
                                        color: UtilColors.whiteColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5.0),
                                    decoration: BoxDecoration(
                                        color: UtilColors.blackColor
                                            .withOpacity(0.8),
                                        border: Border.all(
                                            color: UtilColors.blackColor),
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 2.0),
                                    child: Text(
                                      'test again'.toUpperCase(),
                                      style: GoogleFonts.openSans(
                                          fontSize: Utils.smallFonts,
                                          color: UtilColors.whiteColor,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ],
                              ),
                              progressColor: UtilColors.whiteColor,
                              arcType: ArcType.FULL,
                              backgroundColor:
                                  UtilColors.blackColor.withOpacity(0.4),
                              circularStrokeCap: CircularStrokeCap.round,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20.0),
                          decoration: BoxDecoration(
                              color: UtilColors.blackColor.withOpacity(0.8),
                              border: Border.all(color: UtilColors.blackColor),
                              borderRadius: BorderRadius.circular(10.0)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          child: Text(
                            'more infomation'.toUpperCase(),
                            style: GoogleFonts.openSans(
                                fontSize: Utils.smallFonts,
                                color: UtilColors.whiteColor,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 5.0),
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 20.0,
                                bottom: 20.0,
                                left: 10.0,
                                right: 20.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: UtilColors.blackColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'keep healthy with our services'
                                        .toUpperCase(),
                                    style: GoogleFonts.openSans(
                                        color: UtilColors.whiteColor,
                                        fontSize: 15.0),
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
                                    color:
                                        UtilColors.blackColor.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 20.0),
                                        child: SizedBox(
                                          height:
                                              Utils.displaySize.width * 0.15,
                                          width: Utils.displaySize.width * 0.15,
                                          child: Image.asset(
                                              'assets/img/stress_activity.png'),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Check Your Stress'.toUpperCase(),
                                            style: GoogleFonts.openSans(
                                                color: UtilColors.whiteColor,
                                                fontSize: 15.0),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          SizedBox(
                                            width:
                                                Utils.displaySize.width * 0.6,
                                            child: Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                                                  .toUpperCase(),
                                              style: GoogleFonts.openSans(
                                                  color: UtilColors.whiteColor,
                                                  fontSize: 10.0),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 3,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  margin: EdgeInsets.only(bottom: 10.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color:
                                        UtilColors.blackColor.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 20.0),
                                        child: SizedBox(
                                          height:
                                              Utils.displaySize.width * 0.15,
                                          width: Utils.displaySize.width * 0.15,
                                          child: Image.asset(
                                              'assets/img/meal_sample.png'),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Meals Suggetions'.toUpperCase(),
                                            style: GoogleFonts.openSans(
                                                color: UtilColors.whiteColor,
                                                fontSize: 15.0),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          SizedBox(
                                            width:
                                                Utils.displaySize.width * 0.6,
                                            child: Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                                                  .toUpperCase(),
                                              style: GoogleFonts.openSans(
                                                  color: UtilColors.whiteColor,
                                                  fontSize: 10.0),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 3,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  margin: EdgeInsets.only(bottom: 10.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color:
                                        UtilColors.blackColor.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 20.0),
                                        child: SizedBox(
                                          height:
                                              Utils.displaySize.width * 0.15,
                                          width: Utils.displaySize.width * 0.15,
                                          child: Image.asset(
                                              'assets/img/excercise_sample.png'),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Grow your fitness'.toUpperCase(),
                                            style: GoogleFonts.openSans(
                                                color: UtilColors.whiteColor,
                                                fontSize: 15.0),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          SizedBox(
                                            width:
                                                Utils.displaySize.width * 0.6,
                                            child: Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                                                  .toUpperCase(),
                                              style: GoogleFonts.openSans(
                                                  color: UtilColors.whiteColor,
                                                  fontSize: 10.0),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 3,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 5.0),
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 20.0,
                                bottom: 20.0,
                                left: 10.0,
                                right: 20.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: UtilColors.blackColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'daily risk statistics'.toUpperCase(),
                                    style: GoogleFonts.openSans(
                                        color: UtilColors.whiteColor,
                                        fontSize: 15.0),
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
            )
          ],
        ),
      ),
    ));
  }
}
