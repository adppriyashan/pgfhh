import 'package:flutter/material.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodPredictCalculateLayout extends StatefulWidget {
  FoodPredictCalculateLayout({Key key}) : super(key: key);

  @override
  _FoodPredictCalculateLayoutState createState() =>
      _FoodPredictCalculateLayoutState();
}

class _FoodPredictCalculateLayoutState
    extends State<FoodPredictCalculateLayout> {
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
                  'calculate'.toUpperCase(),
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
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  decoration: BoxDecoration(
                      color: UtilColors.blackColor,
                      borderRadius: BorderRadius.circular(500.0)),
                  child: SizedBox(
                    width: Utils.displaySize.width * 0.6,
                    height: Utils.displaySize.width * 0.6,
                    child: Center(
                      child: Text(
                        'check now'.toUpperCase(),
                        style: GoogleFonts.openSans(
                            fontSize: 25.0,
                            color: UtilColors.primaryColor,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
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
                      color: UtilColors.greenColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "great, you're at the good state".toUpperCase(),
                            style: GoogleFonts.openSans(
                                color: UtilColors.whiteColor, fontSize: 15.0),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero"
                                  .toUpperCase(),
                              style: GoogleFonts.openSans(
                                  color: UtilColors.whiteColor, fontSize: 12.0),
                            ),
                          )
                        ],
                      ),
                    ),
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
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'nutrition plan'.toUpperCase(),
                            style: GoogleFonts.openSans(
                                color: UtilColors.whiteColor, fontSize: 15.0),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: UtilColors.whiteColor,
                          )
                        ],
                      ),
                    ),
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
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'watering plan'.toUpperCase(),
                            style: GoogleFonts.openSans(
                                color: UtilColors.whiteColor, fontSize: 15.0),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: UtilColors.whiteColor,
                          )
                        ],
                      ),
                    ),
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
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'calery consumption plan'.toUpperCase(),
                            style: GoogleFonts.openSans(
                                color: UtilColors.whiteColor, fontSize: 15.0),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: UtilColors.whiteColor,
                          )
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
