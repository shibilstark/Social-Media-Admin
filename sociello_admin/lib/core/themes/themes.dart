import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sociello_admin/core/colors/colors.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      dialogTheme: DialogTheme(backgroundColor: pureWhite),
      iconTheme: IconThemeData(color: commonBlack),
      primaryIconTheme: IconThemeData(color: commonBlack),
      appBarTheme: AppBarTheme(backgroundColor: commonWhite),
      scaffoldBackgroundColor: scaffoldWhite,
      primaryColor: primaryColor,
      highlightColor: commonBlack,
      dividerColor: commonBlack,
      dividerTheme: DividerThemeData(color: primaryColor, thickness: 0.4),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 40.sm, fontWeight: FontWeight.bold, color: commonBlack),
        titleSmall: TextStyle(
            fontSize: 22.sm, fontWeight: FontWeight.w500, color: primaryColor),
        bodyLarge: TextStyle(
            fontSize: 20.sm, fontWeight: FontWeight.w500, color: commonBlack),
        bodyMedium: TextStyle(
            fontSize: 17.sm, fontWeight: FontWeight.normal, color: commonBlack),
        bodySmall: TextStyle(
            fontSize: 12.sm, fontWeight: FontWeight.normal, color: pureWhite),
      ));

  static ThemeData darkTheme = ThemeData(
      dialogTheme: DialogTheme(backgroundColor: commonBlack),
      iconTheme: IconThemeData(color: commonWhite),
      primaryIconTheme: IconThemeData(color: commonWhite),
      appBarTheme: AppBarTheme(backgroundColor: themeBlack),
      scaffoldBackgroundColor: scaffoldBlack,
      dividerColor: commonWhite,
      highlightColor: themeBlack,
      dividerTheme: DividerThemeData(color: primaryColor, thickness: 0.4),
      primaryColor: primaryColor,
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 40.sm, fontWeight: FontWeight.bold, color: commonWhite),
        titleSmall: TextStyle(
            fontSize: 22.sm, fontWeight: FontWeight.w500, color: commonWhite),
        bodyLarge: TextStyle(
            fontSize: 20.sm, fontWeight: FontWeight.w500, color: commonWhite),
        bodyMedium: TextStyle(
            fontSize: 17.sm, fontWeight: FontWeight.normal, color: commonWhite),
        bodySmall: TextStyle(
            fontSize: 12.sm, fontWeight: FontWeight.normal, color: pureWhite),
      ));
}
