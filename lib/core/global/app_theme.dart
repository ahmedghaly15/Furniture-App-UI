import 'package:flutter/material.dart';
import 'package:furniture_app/core/global/app_colors.dart';

class AppTheme {
  static ThemeData appTheme(context) => ThemeData(
        scaffoldBackgroundColor: AppColors.kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'UbuntuBold',
        primaryColor: AppColors.kPrimaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.kPrimaryColor,
          elevation: 0,
          centerTitle: false,
        ),
      );
}
