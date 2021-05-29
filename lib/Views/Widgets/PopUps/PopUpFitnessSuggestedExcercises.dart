import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';

class PopUpFitnessSuggestedExcercises extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PopUpFitnessSuggestedExcercisesState();
}

class PopUpFitnessSuggestedExcercisesState
    extends State<PopUpFitnessSuggestedExcercises> {
  List _excercises = [
    {'id': 1, 'name': 'yoga', 'checked': true},
    {'id': 2, 'name': 'Jump rope', 'checked': true},
    {'id': 3, 'name': 'Aerobic strength circuit', 'checked': true},
    {'id': 4, 'name': 'Running or jogging', 'checked': true},
    {'id': 5, 'name': 'Walking', 'checked': true}
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Wrap(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: UtilColors.whiteColor,
                  borderRadius: BorderRadius.circular(20.0)),
              padding: EdgeInsets.all(20.0),
              width: Utils.displaySize.width * 0.8,
              child: Column(
                children: [
                  Text(
                    'Grab Favorites'.toUpperCase(),
                    style: GoogleFonts.openSans(
                        color: UtilColors.blackColor.withOpacity(0.8),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    'Filter your favorite aerobic excercises'.toUpperCase(),
                    style: GoogleFonts.openSans(
                        color: UtilColors.blackColor.withOpacity(0.8),
                        fontSize: 9.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(
                    color: UtilColors.whiteColor,
                  ),
                  for (var element = 0; element < _excercises.length; element++)
                    CheckboxListTile(
                        secondary: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(_excercises[element]['name'].toUpperCase(),
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: UtilColors.primaryColor))
                          ],
                        ),
                        value: _excercises[element]['checked'],
                        selectedTileColor:
                            UtilColors.primaryColor.withOpacity(0.5),
                        activeColor: UtilColors.primaryColor,
                        onChanged: (value) {
                          setState(() {
                            _excercises[element]['checked'] = value;
                          });
                        }),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          child: Text(
                            "Setup fitness".toUpperCase(),
                            style: GoogleFonts.openSans(),
                          ),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  UtilColors.whiteColor),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  UtilColors.redColor)),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
