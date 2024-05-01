import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = const Color.fromRGBO(33, 150, 243, 1); // Blue
  static Color primaryAccent = const Color.fromRGBO(21, 101, 192, 1);

  static Color secondaryColor = const Color.fromRGBO(255, 235, 59, 1); // Yellow
  static Color secondaryAccent = const Color.fromRGBO(255, 214, 0, 1);

  static Color greyColor = const Color.fromRGBO(35, 35, 35, 1);

  static Color successColor = const Color.fromRGBO(75, 191, 115, 1);
  static Color dangerColor = const Color.fromRGBO(217, 83, 79, 1);
  static Color highlightColor = const Color.fromRGBO(212, 172, 13, 1);

}

ThemeData primaryTheme = ThemeData(
    // seed color :
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
    ),
    // scaffold color :
    scaffoldBackgroundColor: Colors.white,
    // app bar theme color :
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
    ),
    // text theme :
    textTheme: const TextTheme().copyWith(
      bodyMedium:
          TextStyle(fontSize: 14, letterSpacing: 1, color: AppColors.greyColor),
      headlineMedium: TextStyle(
        fontSize: 18,
        letterSpacing: 1,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 28,
        letterSpacing: 1,
        fontWeight: FontWeight.bold,
      ),
    ),

    // card theme :
    cardTheme: CardTheme(
      color: AppColors.secondaryColor.withOpacity(0.5),
      surfaceTintColor: Colors.transparent,
      shape: const RoundedRectangleBorder(),
      shadowColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: 16),
    ),

    // input decoration theme :
    inputDecorationTheme: InputDecorationTheme(
      // filled: true,
      // fillColor: AppColors.secondaryColor.withOpacity(0.5),
      // border: InputBorder.none,
    ),

    // dialog theme  :
    dialogTheme: DialogTheme(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
    ),
    // floatin action button theme :
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.0),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.primaryColor,
      // selectedLabelStyle: TextStyle(),
    ));
