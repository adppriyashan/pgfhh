import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Widgets/PopUps/PopUpFitnessSuggestedExcercises.dart';

class PopUpFitnessMoreInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PopUpFitnessMoreInfoState();
}

class PopUpFitnessMoreInfoState extends State<PopUpFitnessMoreInfo> {
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
                  SizedBox(
                    height: Utils.displaySize.width * 0.5,
                    width: Utils.displaySize.width * 0.5,
                    child: Image.asset('assets/img/excerciseimg.png'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Health Data'.toUpperCase(),
                    style: GoogleFonts.openSans(
                        color: UtilColors.blackColor.withOpacity(0.8),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    'we need something to get better suggestions'.toUpperCase(),
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
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 45.0,
                    child: FormField<String>(
                      builder: (FormFieldState<String> state) {
                        return InputDecorator(
                          decoration: Utils.getDefaultTextInputDecoration(
                              'Select Your Allergies (Optional)', null),
                          baseStyle: Utils.getprimaryFieldTextStylePopUp(
                              UtilColors.whiteColor),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              items: [
                                DropdownMenuItem(
                                  child: Row(
                                    children: <Widget>[
                                      Checkbox(
                                        onChanged: (bool value) {},
                                        value: true,
                                      ),
                                      Text('Skin Allergies'),
                                    ],
                                  ),
                                ),
                                DropdownMenuItem(
                                  child: Row(
                                    children: <Widget>[
                                      Checkbox(
                                        onChanged: (bool value) {},
                                        value: false,
                                      ),
                                      Text('Medications Allergies'),
                                    ],
                                  ),
                                )
                              ],
                              onChanged: (value) {},
                              hint: Text(
                                'No Allergies Selected',
                                style: Utils.getprimaryStyleSmall(
                                    UtilColors.greyColor),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: TextButton(
                              child: Text(
                                "Close",
                                style: GoogleFonts.openSans(),
                              ),
                              style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          UtilColors.whiteColor),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          UtilColors.redColor)),
                              onPressed: () => Navigator.pop(context),
                            )),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: TextButton(
                              child: Text(
                                "Start",
                                style: GoogleFonts.openSans(),
                              ),
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        UtilColors.whiteColor),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        UtilColors.primaryColor),
                              ),
                              onPressed: () async {
                                Navigator.pop(context);
                                // Utils.showLoaderWithCustomMessage(context,
                                //     'Please wait while we suggest a better excercise for you.');
                                await showDialog(
                                  context: context,
                                  builder: (_) =>
                                      PopUpFitnessSuggestedExcercises(),
                                ).then((onValue) {});
                              },
                            )),
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
