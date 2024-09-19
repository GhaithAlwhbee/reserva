import 'package:flutter/material.dart';
import 'Colors.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    cardTheme: const CardTheme(
      surfaceTintColor: Colors.white,
    ),
    datePickerTheme: DatePickerThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    dividerTheme:
        DividerThemeData(color: ColorsManager.kPrimaryColor.withOpacity(.1)),
    primaryColor: ColorsManager.kSecondaryColor,
    useMaterial3: true,
    scaffoldBackgroundColor: ColorsManager.kBackgroundColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: const Color(0xFF5BBA6F),
      secondary: const Color(0xFF145770),
    ),
    hoverColor: ColorsManager.kSecondaryColor.withOpacity(.2),
    progressIndicatorTheme: const ProgressIndicatorThemeData()
        .copyWith(refreshBackgroundColor: ColorsManager.kBackgroundColor),
    radioTheme: const RadioThemeData().copyWith(
        fillColor: MaterialStateProperty.all<Color>(const Color(0xFF5BBA6F))),
    checkboxTheme: const CheckboxThemeData().copyWith(
        fillColor: MaterialStateProperty.all<Color>(const Color(0xFF5BBA6F))),
    drawerTheme: DrawerThemeData(
      width: 250,
      backgroundColor: ColorsManager.kPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: ColorsManager.kGreyColorLight,
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 20,
          height: 1.3,
          color:  ColorsManager.kGreyColorDark,
          // fontFamily: AppFont.kCairoBoldFont,
          fontWeight: FontWeight.w800,
        )),
    dividerColor: const Color(0xFFD9D9D9),
    // fontFamily: AppFont.kCairoNormalFont,
    textTheme: TextTheme(
      headline1: TextStyle(
        height: 1.5,
        fontSize: 24,
        // fontFamily: AppFont.kCairoBoldFont,
        color: ColorsManager.kPrimaryColor,
      ),
      headline2: TextStyle(
        fontSize: 16,
        height: 1.5,
        // fontFamily: AppFont.kCairoBoldFont,
        color: ColorsManager.kBlackColor,
      ),
      headline3: TextStyle(
        fontSize: 15,
        height: 1.5,
        // fontFamily: AppFont.kCairoNormalFont,
        color: ColorsManager.kBlackColor,
      ),
      headline4: TextStyle(
        fontSize: 14,
        height: 1.5,
        // fontFamily: AppFont.kCairoLightFont,
        color: ColorsManager.kBlackColor,
      ),
      bodyText1: TextStyle(
          fontSize: 14,
          height: 1.5,
          color: ColorsManager.kBlackColor,
          // fontFamily: AppFont.kCairoNormalFont,
          ),
      bodyText2: TextStyle(
          fontSize: 15,
          height: 1.5,
          color: ColorsManager.kBlackColor,
          // fontFamily: AppFont.kCairoNormalFont,
          ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shadowColor: Colors.black,
            surfaceTintColor: Colors.black,
            foregroundColor: ColorsManager.kGreyColorLight)),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      border: InputBorder.none,
      hintStyle: TextStyle(color: ColorsManager.kGreyColorLight),
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: ColorsManager.kRedColor),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: ColorsManager.kRedColor),
      ),
    ),
  );
}
