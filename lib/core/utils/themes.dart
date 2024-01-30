import 'package:azkarapp/constants.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    /*pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),*/

    /*checkboxTheme: const CheckboxThemeData().copyWith(
      fillColor: MaterialStateProperty.all(Colors.green),
    ),*/
    // primaryColor: Colors.black,
    scaffoldBackgroundColor: KLightModeThemeColor,

    //dividerColor: Colors.black,
    colorScheme: Theme.of(context).colorScheme.copyWith(
        primary: Colors.black,
        primaryContainer: Colors.white,
        secondaryContainer: KDarkModeContainerColor,
        tertiaryContainer: Color(0xffDFE0F3),
          secondary: KDarkModeContainerColor

    ),
    textTheme: Theme.of(context).textTheme.apply(
        bodyColor: Colors.black,


        // displayColor: Colors.pink,

        fontFamily: 'cairo'),
    //primaryTextTheme: ThemeData.light().textTheme.apply(),

    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(color: KLightModeThemeColor),
      prefixIconColor: KLightModeThemeColor,
      suffixIconColor: KLightModeThemeColor,
      //contentPadding: const EdgeInsets.all(8),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        //borderSide: Divider.createBorderSide(context)
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        //borderSide: Divider.createBorderSide(context)
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        //borderSide: Divider.createBorderSide(context)
      ),

      fillColor: Colors.white,
      filled: true,
      contentPadding: const EdgeInsets.all(8),

      /* border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(18),
      ),*/
      /* enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(18),
      ),*/
      /* focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(18),
      ),*/
      /*  disabledBorder: OutlineInputBorder(
        //borderSide: const BorderSide(color: Colors.transparent),
       // borderRadius: BorderRadius.circular(18),
      ),*/
    ),
    textSelectionTheme: const TextSelectionThemeData(
        // cursorColor: Colors.black,
        ),
    /* textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.black,
      ),
    ),*/
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.grey,
    ),

  );
}

//===============================================================
ThemeData darkTheme(BuildContext context) {
  return ThemeData.dark().copyWith(
    /*pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),*/
    primaryColor: KDarkModeContainerColor,
    scaffoldBackgroundColor: KDarkMOdeBackGroundColor,
    colorScheme: Theme.of(context).colorScheme.copyWith(
        //primary: Colors.white,
        primaryContainer: KDarkModeContainerColor,
        secondaryContainer: KDarkMOdeBackGroundColor,
        tertiaryContainer: Color(0xffDFE0F3),
      secondary: KDarkMOdeBackGroundColor
    ),
    textTheme: Theme.of(context)
        .textTheme
        .apply(bodyColor: Colors.white, fontFamily: 'cairo'),
    primaryTextTheme: ThemeData.dark().textTheme.apply(),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.grey,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(color: Colors.white),
      prefixIconColor: Colors.white,
      suffixIconColor: Colors.white,
      // focusColor: Colors.grey,
      fillColor: KDarkModeContainerColor,
      filled: true,
      contentPadding: const EdgeInsets.all(8),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        //borderSide: Divider.createBorderSide(context)
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        //borderSide: Divider.createBorderSide(context)
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        //borderSide: Divider.createBorderSide(context)
      ),
    ),
    brightness: Brightness.dark,
    dividerColor: Colors.white,
    /* textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
      ),
    ),*/
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.black,
    ),
  );
}
