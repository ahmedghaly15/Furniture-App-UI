import 'package:flutter/material.dart';
import 'package:furniture_app/core/global/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData appTheme(context) => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: AppColors.kPrimaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.kPrimaryColor,
          elevation: 0,
          centerTitle: false,
        ),
      );
}
