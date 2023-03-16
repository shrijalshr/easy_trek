import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_color.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColor.light.white,
        foregroundColor: AppColor.light.darkGrey,
        iconTheme: IconThemeData(color: AppColor.light.darkGrey),
        centerTitle: false,
        titleTextStyle: textTheme.displayLarge!.apply(
          color: AppColor.light.darkGrey,
          // fontSizeDelta: 18,
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColor.light.white,
        )),
    primaryColor: AppColor.light.darkGrey,
    scaffoldBackgroundColor: AppColor.light.whiteSmoke,
    textTheme: textTheme,
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStatePropertyAll(AppColor.light.darkGrey),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
    ),
    primaryTextTheme: textTheme,
    splashColor: AppColor.light.lightGrey,
    extensions: const <ThemeExtension<dynamic>>[
      AppColor.light,
    ],
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColor.light.darkGrey,
        surface: AppColor.light.whiteSmoke,
        onSurface: AppColor.light.lightGrey,
        error: AppColor.light.errorColor,
        background: AppColor.light.whiteSmoke,
        onBackground: AppColor.light.lightGrey,
        onPrimary: AppColor.light.darkGrey,
        secondary: AppColor.light.lightGrey,
        onError: AppColor.light.errorColor,
        onSecondary: AppColor.light.whiteSmoke),
  );

  static TextTheme textTheme = TextTheme(
    headlineLarge: GoogleFonts.poppins(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      color: AppColor.light.darkGrey,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColor.light.darkGrey,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppColor.light.darkGrey,
    ),
    displayLarge: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColor.light.darkGrey,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 14,
      height: 1.5,
      fontWeight: FontWeight.w500,
      color: AppColor.light.darkGrey,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 12,
      height: 1.5,
      fontWeight: FontWeight.w500,
      color: AppColor.light.darkGrey,
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize: 14,
      height: 1.5,
      fontWeight: FontWeight.w400,
      color: AppColor.light.lightGrey,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 12,
      height: 1.5,
      fontWeight: FontWeight.w400,
      color: AppColor.light.lightGrey,
    ),
    bodySmall: GoogleFonts.poppins(
      fontSize: 10,
      height: 1.5,
      fontWeight: FontWeight.w400,
      color: AppColor.light.lightGrey,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w400,
      color: AppColor.light.darkGrey,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 14,
      height: 1.5,
      fontWeight: FontWeight.w400,
      color: AppColor.light.darkGrey,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 12,
      height: 1.5,
      fontWeight: FontWeight.w400,
      color: AppColor.light.darkGrey,
    ),
    labelLarge: GoogleFonts.poppins(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w600,
      color: AppColor.light.lightGrey,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 14,
      height: 1.5,
      fontWeight: FontWeight.w600,
      color: AppColor.light.lightGrey,
    ),
    labelSmall: GoogleFonts.poppins(
      fontSize: 12,
      height: 1.5,
      fontWeight: FontWeight.w600,
      color: AppColor.light.lightGrey,
    ),
  );
}
