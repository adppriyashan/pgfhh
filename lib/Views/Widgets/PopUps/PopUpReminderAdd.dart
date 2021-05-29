import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Utils.dart';

class PopUpReminderAdd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PopUpReminderAddState();
}

class PopUpReminderAddState extends State<PopUpReminderAdd> {
  var _currentSelectedValue = 'Food';
  var _currencies = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Wrap(
          children: [
            Container(
              decoration: BoxDecoration(color: UtilColors.blackColor),
              padding: EdgeInsets.all(20.0),
              width: Utils.displaySize.width * 0.8,
              child: Column(
                children: [
                  Text(
                    'Add Reminder'.toUpperCase(),
                    style: GoogleFonts.openSans(
                        color: UtilColors.whiteColor,
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
                  FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: Utils.getDefaultTextInputDecoration(
                            'Reminder Type', null),
                        isEmpty: _currentSelectedValue == '',
                        baseStyle: Utils.getprimaryFieldTextStylePopUp(
                            UtilColors.whiteColor),
                        child: DropdownButtonHideUnderline(
                          child: 
                          
                          DropdownButton<String>(
                            value: _currentSelectedValue,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                _currentSelectedValue = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _currencies.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: Utils.getDefaultTextInputDecoration(
                        'Reminder Time',
                        Icon(
                          Icons.lock_clock,
                          color: UtilColors.greyColor.withOpacity(0.6),
                        )),
                    cursorColor: UtilColors.primaryColor,
                    keyboardType: TextInputType.datetime,
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
                            onPressed: () async {},
                            child: Text(
                              "Add Record",
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
