import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_styles.dart';

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
          titleTextStyle: AppStyles.textStyle25,
        ),
      );
}
