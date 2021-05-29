import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';

class PopUpRiskDataAdd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PopUpRiskDataAddState();
}

class PopUpRiskDataAddState extends State<PopUpRiskDataAdd> {
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
                    'Fill Your Health Data'.toUpperCase(),
                    style: GoogleFonts.openSans(
                        color: UtilColors.blackColor.withOpacity(0.8),
                        fontSize: 15.0,
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
                  TextFormField(
                    decoration: Utils.getDefaultTextInputDecoration(
                        'Diabetic State',
                        Icon(
                          Icons.filter_alt,
                          color: UtilColors.greyColor.withOpacity(0.6),
                        )),
                    cursorColor: UtilColors.primaryColor,
                    keyboardType: TextInputType.number,
                    style: Utils.getprimaryFieldTextStylePopUp(
                        UtilColors.greyColor),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: Utils.getDefaultTextInputDecoration(
                        'Blood Pressure',
                        Icon(
                          Icons.filter_alt,
                          color: UtilColors.greyColor.withOpacity(0.6),
                        )),
                    cursorColor: UtilColors.primaryColor,
                    keyboardType: TextInputType.number,
                    style: Utils.getprimaryFieldTextStylePopUp(
                        UtilColors.greyColor),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: Utils.getDefaultTextInputDecoration(
                        'Cholestrol Level',
                        Icon(
                          Icons.filter_alt,
                          color: UtilColors.greyColor.withOpacity(0.6),
                        )),
                    cursorColor: UtilColors.primaryColor,
                    keyboardType: TextInputType.number,
                    style: Utils.getprimaryFieldTextStylePopUp(
                        UtilColors.greyColor),
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
                          child: FlatButton(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Close",
                            ),
                            color: UtilColors.redColor,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    Utils.buttonBorderRadius),
                                side: BorderSide(color: UtilColors.redColor)),
                            height: 42.0,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: FlatButton(
                            onPressed: () async {
                              Navigator.pop(context);
                              Utils.showLoader(context);
                            },
                            child: Text(
                              "Start",
                            ),
                            color: UtilColors.primaryColor,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    Utils.buttonBorderRadius),
                                side:
                                    BorderSide(color: UtilColors.primaryColor)),
                            height: 42.0,
                          ),
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
