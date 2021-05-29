import 'package:day_night_time_picker/lib/constants.dart';
import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Common/HomeDrawer.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Widgets/PopUps/PopUpReminderAdd.dart';

class Reminders extends StatefulWidget {
  Reminders({Key key}) : super(key: key);

  @override
  _RemindersState createState() => _RemindersState();
}

class _RemindersState extends State<Reminders> {
  TimeOfDay _time = TimeOfDay.now().replacing(minute: 30);
  bool iosStyle = true;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void onTimeChanged(TimeOfDay newTime) {
    setState(() {
      _time = newTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      drawer: HomeDrawer(selection: 5),
      body: Stack(
        children: [
          Container(
            width: Utils.displaySize.width,
            height: Utils.displaySize.height,
            decoration: Utils.getGradientBackground(),
          ),
          Container(
            width: double.infinity,
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
                          Icons.menu_sharp,
                          color: UtilColors.whiteColor,
                        ),
                      ),
                      Text(
                        'Reminders'.toUpperCase(),
                        style: GoogleFonts.openSans(
                            color: UtilColors.whiteColor,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.account_circle_sharp,
                        color: UtilColors.whiteColor,
                      ),
                    ],
                  ),
                ),
                Flexible(
                    child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10.0, right: 10.0, bottom: 5.0),
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 20.0, bottom: 20.0, left: 10.0, right: 20.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: UtilColors.blackColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Column(
                                children: [
                                  Text(
                                    'manage your schedule'.toUpperCase(),
                                    style: GoogleFonts.openSans(
                                        color: UtilColors.primaryColor,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (_) => PopUpReminderAdd(),
                                      ).then((onValue) {});
                                    },
                                    child: Container(
                                        width: Utils.displaySize.width * 0.45,
                                        decoration: BoxDecoration(
                                            color: UtilColors.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(100.0)),
                                        padding: EdgeInsets.all(10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(
                                              Icons.add,
                                              color: UtilColors.whiteColor,
                                            ),
                                            Text(
                                              'Add reminder'.toUpperCase(),
                                              style: GoogleFonts.openSans(
                                                  color: UtilColors.whiteColor,
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ],
                                        )),
                                  )
                                ],
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Divider(
                        color: UtilColors.blackColor,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      getRecord(),
                      getRecord(),
                      getRecord(),
                      getRecord(),
                      getRecord(),
                      getRecord(),
                      SizedBox(
                        height: 30.0,
                      )
                    ],
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    ));
    ;
  }

  getRecord() {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
      child: Container(
        padding:
            EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10.0, right: 20.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: UtilColors.blackColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'take your breakfast'.toUpperCase(),
                style: GoogleFonts.openSans(
                    color: UtilColors.whiteColor, fontSize: 15.0),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Text(
                      '08:30 AM'.toUpperCase(),
                      style: GoogleFonts.openSans(
                          color: UtilColors.whiteColor, fontSize: 15.0),
                    ),
                  ),
                  Icon(
                    Icons.delete,
                    color: UtilColors.redColor,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
