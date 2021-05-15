import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:personalizeguidanceforahealthyheart/Models/Colors.dart';
import 'package:personalizeguidanceforahealthyheart/Models/User.dart';
import 'package:personalizeguidanceforahealthyheart/Views/Widgets/PopUps/PopUpLoading.dart';

class Utils {
  //Fonts Start
  static double smallFonts = 10.0;
  static double xlFonts = 30.0;
  //Fonts End

  static Size displaySize;
  static ProfileUser profileUser;

  static var lightNavbar = SystemUiOverlayStyle.light.copyWith(
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: UtilColors.blackColor,
      statusBarColor: UtilColors.primaryStatusBarColor);

  static var darkNavbar = SystemUiOverlayStyle.dark.copyWith(
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: UtilColors.blackColor,
      statusBarColor: UtilColors.primaryStatusBarColor);

  //TextStyles
  static TextStyle getprimaryStyle(Color color) {
    return TextStyle(color: color, fontFamily: 'Natosans');
  }

  static TextStyle getprimaryBoldStyle(Color color) {
    return TextStyle(
        color: color, fontFamily: 'Natosans', fontWeight: FontWeight.bold);
  }

  static TextStyle getprimaryFieldTextStyle(Color color) {
    return TextStyle(
        color: UtilColors.blackColor, fontFamily: 'Natosans', fontSize: 13.0);
  }

  //TextFormField Styles

  static double borderRadius = 15.0;
  static double buttonBorderRadius = 10.0;

  static InputDecoration getDefaultTextInputDecoration(
      String label, Icon suffixIcon) {
    return InputDecoration(
        labelText: label,
        errorStyle: TextStyle(fontSize: 11, color: Colors.red),
        contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
        labelStyle: TextStyle(fontSize: 13.0, color: UtilColors.greyColor),
        suffixIcon: suffixIcon,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: UtilColors.secondaryColor, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: UtilColors.primaryColor, width: 2.0),
        ));
  }

  //Loading Widgets

  static bool checkShowLoader = false;
  static BuildContext parentLoadingContext;

  static Future showLoader(context) async {
    await showDialog(
      context: context,
      builder: (_) => PopUpLoading(),
    ).then((onValue) {
      parentLoadingContext = context;
      checkShowLoader = true;
    });
  }

  static Future hideLoader() async {
    if (checkShowLoader == true && parentLoadingContext != null) {
      Navigator.pop(parentLoadingContext);
      parentLoadingContext = null;
      checkShowLoader = false;
    }
  }

  static Future hideLoaderCurrrent(context) async {
    Navigator.pop(context);
    parentLoadingContext = null;
    checkShowLoader = false;
  }

  //Toast Contents

  static showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static getGradientBackground() {
    return BoxDecoration(
        gradient: LinearGradient(
      begin: Alignment.topRight,
      tileMode: TileMode.decal,
      end: Alignment.bottomLeft,
      colors: [
        UtilColors.primaryColor,
        UtilColors.secondaryColor,
      ],
    ));
  }

  static getTextGradient() {
    return LinearGradient(
      colors: <Color>[UtilColors.primaryColor, UtilColors.secondaryColor],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  }
}
