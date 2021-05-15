import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodPredictHistoryLayout extends StatefulWidget {
  FoodPredictHistoryLayout({Key key}) : super(key: key);

  @override
  _FoodPredictHistoryLayoutState createState() =>
      _FoodPredictHistoryLayoutState();
}

class _FoodPredictHistoryLayoutState extends State<FoodPredictHistoryLayout> {
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
                  'record history'.toUpperCase(),
                  style: GoogleFonts.openSans(
                      color: Utils.whiteColor, fontWeight: FontWeight.w600),
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
                      color: Utils.blackColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "meal suggetion complete".toUpperCase(),
                            style: GoogleFonts.openSans(
                                color: Utils.whiteColor,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Divider(
                            color: Utils.whiteColor,
                          ),
                          Text(
                            "result is good. keep it up".toUpperCase(),
                            style: GoogleFonts.openSans(
                                color: Utils.whiteColor, fontSize: 12.0),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              "03/05/2021 11:09 PM".toUpperCase(),
                              style: GoogleFonts.openSans(
                                  color: Utils.whiteColor, fontSize: 10.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
}
