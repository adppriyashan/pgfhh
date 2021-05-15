import 'package:flutter/material.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodPredictSettingsLayout extends StatefulWidget {
  FoodPredictSettingsLayout({Key key}) : super(key: key);

  @override
  _FoodPredictSettingsLayoutState createState() =>
      _FoodPredictSettingsLayoutState();
}

class _FoodPredictSettingsLayoutState extends State<FoodPredictSettingsLayout> {
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
                  'settings'.toUpperCase(),
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
                            "personal information".toUpperCase(),
                            style: GoogleFonts.openSans(
                                color: Utils.whiteColor,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Divider(
                            color: Utils.whiteColor,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: Utils.displaySize.width * 0.3,
                                  width: Utils.displaySize.width * 0.3,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Image.network(
                                      'https://i.dlpng.com/static/png/5327106-businessman-icon-png-263229-free-icons-library-businessman-icon-png-512_512_preview.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Thilini Flutter',
                                  style: TextStyle(
                                      color: Utils.whiteColor,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'thilini@gmail.com',
                                  style: TextStyle(
                                      color: Utils.whiteColor, fontSize: 12.0),
                                ),
                              ],
                            ),
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
