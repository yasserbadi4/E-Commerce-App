import 'package:ecommerce_mina/presentation/resources/color_manager.dart';
import 'package:ecommerce_mina/presentation/resources/styles_manager.dart';
import 'package:ecommerce_mina/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,

    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),
    // app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle:
          getRegularStyle(fontSize: FontSize.s16, color: ColorManager.white),
    ),
    // button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.lightPrimary),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getRegularStyle(
                color: ColorManager.white, fontSize: FontSize.s17),
            backgroundColor: ColorManager.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s12)))),
/*
2018 which is deprecated
==========================
https://api.flutter.dev/flutter/material/TextTheme-class.html

NAME         SIZE  WEIGHT  SPACING
headline1    96.0  light   -1.5
headline2    60.0  light   -0.5
headline3    48.0  regular  0.0
headline4    34.0  regular  0.25
headline5    24.0  regular  0.0
headline6    20.0  medium   0.15
subtitle1    16.0  regular  0.15
subtitle2    14.0  medium   0.1
body1        16.0  regular  0.5   (bodyText1)
body2        14.0  regular  0.25  (bodyText2)
button       14.0  medium   1.25
caption      12.0  regular  0.4
overline     10.0  regular  1.5

 */



    // text theme
    textTheme: TextTheme(
      displayLarge:
        getLightStyle(color: ColorManager.darkGrey, fontSize: FontSize.s16),
        headlineLarge: getSemiBoldStyle(
            color: ColorManager.darkGrey, fontSize: FontSize.s16),
        headlineMedium: getRegularStyle(
            color: ColorManager.darkGrey, fontSize: FontSize.s14),
        titleMedium: getMediumStyle(
            color: ColorManager.primary, fontSize: FontSize.s16),
        bodyLarge: getRegularStyle(color: ColorManager.grey1),
        bodySmall: getRegularStyle(color: ColorManager.grey)),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      // content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      // hint style
      hintStyle:
          getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14),
      // label style
      labelStyle:
          getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
      // error style
      errorStyle: getRegularStyle(color: ColorManager.error),
      // enabled border style
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      // focused border style
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      // error border style
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      // error focused border style
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
    ),
  );
}
