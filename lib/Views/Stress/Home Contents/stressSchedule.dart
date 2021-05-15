import 'package:day_night_time_picker/lib/constants.dart';
import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';

class StressPredictScheduleLayout extends StatefulWidget {
  StressPredictScheduleLayout({Key key}) : super(key: key);

  @override
  _StressPredictScheduleLayoutState createState() =>
      _StressPredictScheduleLayoutState();
}

class _StressPredictScheduleLayoutState
    extends State<StressPredictScheduleLayout> {
  TimeOfDay _time = TimeOfDay.now().replacing(minute: 30);
  bool iosStyle = true;

  void onTimeChanged(TimeOfDay newTime) {
    setState(() {
      _time = newTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'schedule'.toUpperCase(),
                  style: GoogleFonts.openSans(
                      color: UtilColors.whiteColor, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Flexible(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
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
                              onTap: () {
                                Navigator.of(context).push(
                                  showPicker(
                                    context: context,
                                    value: _time,
                                    onChange: onTimeChanged,
                                    minuteInterval: MinuteInterval.FIVE,
                                    disableHour: false,
                                    disableMinute: false,
                                    minMinute: 7,
                                    maxMinute: 56,
                                  ),
                                );
                              },
                              child: Container(
                                  width: Utils.displaySize.width * 0.7,
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
                                        'manage your schedule'.toUpperCase(),
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
    );
  }

  getRecord() {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
      child: Container(
        padding:
            EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10.0, right: 20.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: UtilColors.blackColor.withOpacity(0.2),
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
