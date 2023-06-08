import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:visitbj/ressources/theme/typography/app_typography.dart';

import 'color/app_color.dart';

class AppThemData {
  final bool isDark = false;

  ThemeData toThemeData() {
    /// Create a TextTheme and ColorScheme, that we can use to generate ThemeData
    TextTheme txtTheme =
        (isDark ? ThemeData.dark() : ThemeData.light()).textTheme;
    Color txtColor = AppColors.detailsColors;
    ColorScheme colorScheme = ColorScheme(
      brightness: isDark ? Brightness.dark : Brightness.light,
      primary: AppColors.primaryOne,
      primaryContainer: AppColors.primaryOne,
      secondary: AppColors.primaryTwo,
      secondaryContainer: AppColors.primaryOne,
      background: AppColors.white,
      surface: AppColors.primaryTwo,
      onBackground: txtColor,
      onSurface: txtColor,
      onError: Colors.white,
      onPrimary: AppColors.primaryTwo,
      onSecondary: AppColors.primaryTwo,
      error: Colors.red.shade400,
    );

    /// Now that we have ColorScheme and TextTheme, we can create the ThemeData
    /// Also add on some extra properties that ColorScheme seems to miss
    var t = ThemeData.from(
      useMaterial3: true,
      textTheme: txtTheme,
      colorScheme: colorScheme,

      //colorSchemeSeed:
    ).copyWith(
        textSelectionTheme:
        const TextSelectionThemeData(cursorColor: AppColors.primaryOne),
        highlightColor: AppColors.primaryTwo,
        splashColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light, // 2
          color: AppColors.primaryTwo,
        ),
        dialogTheme: const DialogTheme(
          backgroundColor: AppColors.primaryOne,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
        ),
        textTheme: TextTheme(
        //  bodyLarge: AppTypography().headline1,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.primaryOne),
            borderRadius: BorderRadius.circular(30.0),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(color: AppColors.primaryOne)),
       //   hintStyle: AppTypography().hintText,
        ));

    /// Return the themeData which MaterialApp can now use
    return t;
  }
}