// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

@immutable
class AppColor extends ThemeExtension<AppColor> {
  final Color primaryColor;
  final Color darkGrey;
  final Color lightGrey;
  final Color whiteSmoke;
  final Color white;
  final Color successColor;
  final Color errorColor;
  final Color infoColor;
  final Color warningColor;

  const AppColor({
    required this.primaryColor,
    required this.darkGrey,
    required this.lightGrey,
    required this.whiteSmoke,
    required this.white,
    required this.successColor,
    required this.errorColor,
    required this.infoColor,
    required this.warningColor,
  });

  @override
  ThemeExtension<AppColor> copyWith({
    Color? primaryColor,
    Color? backgroundColor,
    Color? darkGrey,
    Color? lightGrey,
    Color? mistGrey,
    Color? whiteSmoke,
    Color? white,
    Color? successColor,
    Color? errorColor,
    Color? infoColor,
    Color? warningColor,
  }) {
    return AppColor(
        primaryColor: primaryColor ?? this.primaryColor,
        darkGrey: darkGrey ?? this.darkGrey,
        lightGrey: lightGrey ?? this.lightGrey,
        whiteSmoke: whiteSmoke ?? this.whiteSmoke,
        white: white ?? this.white,
        successColor: successColor ?? this.successColor,
        errorColor: errorColor ?? this.errorColor,
        infoColor: infoColor ?? this.infoColor,
        warningColor: warningColor ?? this.warningColor);
  }

  @override
  ThemeExtension<AppColor> lerp(ThemeExtension<AppColor>? other, double t) {
    if (other is! AppColor) return this;

    return AppColor(
      primaryColor:
          Color.lerp(primaryColor, other.primaryColor, t) ?? primaryColor,
      darkGrey: Color.lerp(darkGrey, other.darkGrey, t) ?? darkGrey,
      lightGrey: Color.lerp(lightGrey, other.lightGrey, t) ?? lightGrey,
      white: Color.lerp(white, other.white, t) ?? white,
      whiteSmoke: Color.lerp(whiteSmoke, other.whiteSmoke, t) ?? whiteSmoke,
      successColor:
          Color.lerp(successColor, other.successColor, t) ?? successColor,
      errorColor: Color.lerp(errorColor, other.errorColor, t) ?? errorColor,
      infoColor: Color.lerp(infoColor, other.infoColor, t) ?? infoColor,
      warningColor:
          Color.lerp(warningColor, other.warningColor, t) ?? warningColor,
    );
  }

  static const AppColor light = AppColor(
    primaryColor: Color(0xffDCE4DB),
    darkGrey: Color(0xff1A1D26),
    lightGrey: Color.fromARGB(255, 205, 205, 207),
    whiteSmoke: Color(0xfffcfcfc),
    white: Color(0xffffffff),
    successColor: Color(0xff0b735f),
    errorColor: Color(0xffFC4141),
    infoColor: Color(0xff2F80ED),
    warningColor: Color(0xffEE961B),
  );
}
