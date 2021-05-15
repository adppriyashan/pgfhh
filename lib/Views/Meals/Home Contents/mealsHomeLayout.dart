import 'package:flutter/material.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Meals/mealsGraph.dart';

class FoodPredictHomeLayout extends StatefulWidget {
  FoodPredictHomeLayout({Key key}) : super(key: key);

  @override
  _FoodPredictHomeLayoutState createState() => _FoodPredictHomeLayoutState();
}

class _FoodPredictHomeLayoutState extends State<FoodPredictHomeLayout> {
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
                    width: Utils.displaySize.width * 0.4,
                    height: Utils.displaySize.width * 0.4,
                    child: Image.asset('assets/img/meal_sample.png'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
                  decoration: BoxDecoration(
                      color: UtilColors.primaryColor,
                      border: Border.all(color: UtilColors.whiteColor),
                      borderRadius: BorderRadius.circular(10.0)),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: Text(
                    'Click here to more info'.toUpperCase(),
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
                        top: 20.0, bottom: 20.0, left: 20.0, right: 20.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: UtilColors.blackColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'meal suggetions'.toUpperCase(),
                          style: GoogleFonts.openSans(
                              color: UtilColors.whiteColor, fontSize: 15.0),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(right: 10.0),
                                child: SizedBox(
                                  width: Utils.displaySize.width * 0.2,
                                  height: Utils.displaySize.width * 0.2,
                                  child:
                                      Image.asset('assets/img/meal_sample.png'),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 10.0),
                                child: SizedBox(
                                  width: Utils.displaySize.width * 0.2,
                                  height: Utils.displaySize.width * 0.2,
                                  child:
                                      Image.asset('assets/img/meal_sample.png'),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 10.0),
                                child: SizedBox(
                                  width: Utils.displaySize.width * 0.2,
                                  height: Utils.displaySize.width * 0.2,
                                  child:
                                      Image.asset('assets/img/meal_sample.png'),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 10.0),
                                child: SizedBox(
                                  width: Utils.displaySize.width * 0.2,
                                  height: Utils.displaySize.width * 0.2,
                                  child:
                                      Image.asset('assets/img/meal_sample.png'),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 10.0),
                                child: SizedBox(
                                  width: Utils.displaySize.width * 0.2,
                                  height: Utils.displaySize.width * 0.2,
                                  child:
                                      Image.asset('assets/img/meal_sample.png'),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
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
                        HomeGraph()
                      ],
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
