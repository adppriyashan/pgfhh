import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Common/HomeDrawer.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Stress/stressGraph.dart';

class StressPredictHome extends StatefulWidget {
  StressPredictHome({Key key}) : super(key: key);

  @override
  _StressPredictHomeState createState() => _StressPredictHomeState();
}

class _StressPredictHomeState extends State<StressPredictHome> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: HomeDrawer(
          selection: 2,
        ),
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
            Column(
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
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: UtilColors.whiteColor,
                        ),
                      ),
                      Text(
                        'Stress Calculator'.toUpperCase(),
                        style: GoogleFonts.openSans(
                            color: UtilColors.whiteColor,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.notifications_active_outlined,
                        color: UtilColors.whiteColor,
                      )
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
                          child: Image.asset('assets/img/stress_home_img.png'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20.0),
                        decoration: BoxDecoration(
                            color: UtilColors.primaryColor,
                            border: Border.all(color: UtilColors.whiteColor),
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: Text(
                          'Click here to reduce your stress'.toUpperCase(),
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
                              top: 20.0, bottom: 20.0, left: 10.0, right: 20.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: UtilColors.blackColor.withOpacity(0.4),
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
                                  color: UtilColors.blackColor.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 20.0),
                                          child: SizedBox(
                                            height:
                                                Utils.displaySize.width * 0.1,
                                            width:
                                                Utils.displaySize.width * 0.1,
                                            child: Image.asset(
                                                'assets/img/stress_activity.png'),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Meditation'.toUpperCase(),
                                              style: GoogleFonts.openSans(
                                                  color: UtilColors.whiteColor,
                                                  fontSize: 15.0),
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            SizedBox(
                                              width: Utils.displaySize.width *
                                                  0.48,
                                              child: Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                                                    .toUpperCase(),
                                                style: GoogleFonts.openSans(
                                                    color:
                                                        UtilColors.whiteColor,
                                                    fontSize: 9.0),
                                                textAlign: TextAlign.justify,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: UtilColors.redColor,
                                          border: Border.all(
                                              color: UtilColors.redColor),
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 5.0),
                                      child: Text(
                                        '85%'.toUpperCase(),
                                        style: GoogleFonts.openSans(
                                            fontSize: Utils.smallFonts,
                                            color: UtilColors.whiteColor,
                                            fontWeight: FontWeight.w700),
                                      ),
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
                        padding: EdgeInsets.only(
                            left: 10.0, right: 10.0, bottom: 5.0),
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 20.0, bottom: 20.0, left: 10.0, right: 20.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: UtilColors.blackColor.withOpacity(0.4),
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
            )
          ],
        ),
      ),
    ));
  }
}
