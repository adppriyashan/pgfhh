import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Common/HomeDrawer.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Meals/mealsGraph.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Widgets/PopUps/PopUpFitnessMoreInfo.dart';

class FitnessScheduler extends StatefulWidget {
  FitnessScheduler({Key key}) : super(key: key);

  @override
  _FitnessSchedulerState createState() => _FitnessSchedulerState();
}

class _FitnessSchedulerState extends State<FitnessScheduler> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget> _suggetions = [];

  @override
  void initState() {
    getSuggetions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: HomeDrawer(
          selection: 4,
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
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: UtilColors.whiteColor,
                          ),
                        ),
                        Text(
                          'Fitness Scheduler'.toUpperCase(),
                          style: GoogleFonts.openSans(
                              color: UtilColors.whiteColor,
                              fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.notifications_active_outlined,
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
                              percent: 0.4,
                              center: GestureDetector(
                                onTap: () async {
                                  await showDialog(
                                    context: context,
                                    builder: (_) => PopUpFitnessMoreInfo(),
                                  ).then((onValue) {});
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "make me some".toUpperCase(),
                                      style: GoogleFonts.openSans(
                                          fontSize: 9,
                                          color: UtilColors.whiteColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Fitness'.toUpperCase(),
                                      style: GoogleFonts.openSans(
                                          fontSize: 28.0,
                                          color: UtilColors.whiteColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "schedules".toUpperCase(),
                                      style: GoogleFonts.openSans(
                                          fontSize: 9,
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
                                        'run test'.toUpperCase(),
                                        style: GoogleFonts.openSans(
                                            fontSize: Utils.smallFonts,
                                            color: UtilColors.whiteColor,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              progressColor: UtilColors.redColor,
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
                            'Fitness History'.toUpperCase(),
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
                                    'suggested daily fitness schedule'
                                        .toUpperCase(),
                                    style: GoogleFonts.openSans(
                                        color: UtilColors.whiteColor,
                                        fontSize: 15.0),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                for (Widget element in _suggetions) element,
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
                                    'Daily Fitness statistics'.toUpperCase(),
                                    style: GoogleFonts.openSans(
                                        color: UtilColors.whiteColor,
                                        fontSize: 15.0),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                HomeGraph()
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

  void getSuggetions() {
    setState(() {
      _suggetions.add(getSuggetionCard(
          1,
          'assets/img/morninglogo.png',
          'Get ready to start with schedule',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'));
      _suggetions.add(getSuggetionCard(
          2,
          'assets/img/nightlogo.png',
          'before sleep grow your fitness',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'));
      _suggetions.add(getSuggetionCard(
          3,
          'assets/img/nightlogo.png',
          'before sleep grow your fitness',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'));
    });
  }

  Widget getSuggetionCard(uid, image, title, subtitle) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(
        bottom: 10.0,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: UtilColors.blackColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: SizedBox(
              height: Utils.displaySize.width * 0.17,
              width: Utils.displaySize.width * 0.17,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(image),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title.toUpperCase(),
                style: GoogleFonts.openSans(
                    color: UtilColors.whiteColor, fontSize: 12.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: Utils.displaySize.width * 0.6,
                child: Text(
                  subtitle.toUpperCase(),
                  style: GoogleFonts.openSans(
                      color: UtilColors.whiteColor, fontSize: 9.0),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                    color: UtilColors.redColor.withOpacity(0.8),
                    border: Border.all(color: UtilColors.redColor),
                    borderRadius: BorderRadius.circular(10.0)),
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Text(
                  'Click Here To Start',
                  style: GoogleFonts.openSans(
                      fontSize: Utils.smallFonts,
                      color: UtilColors.whiteColor,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
