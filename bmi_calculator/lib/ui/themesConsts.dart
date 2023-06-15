import 'package:bmi_calculator/exports.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.grey.shade200,
  secondaryHeaderColor: Colors.grey,
  iconTheme: IconThemeData(color: Colors.black),
  textTheme: TextTheme(
    bodySmall: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w300,
      fontSize: 12,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w300,
      fontSize: 15,
    ),
    bodyLarge: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w300,
      fontSize: 18,
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.grey.shade800,
  secondaryHeaderColor: Colors.grey.shade900,
  iconTheme: IconThemeData(color: Colors.white),
  textTheme: TextTheme(
    bodySmall: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w300,
      fontSize: 12,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w300,
      fontSize: 15,
    ),
    bodyLarge: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w300,
      fontSize: 18,
    ),
  ),
);

BorderRadius bradiusRounded = BorderRadius.circular(16);
BorderRadius bradiusSoft = BorderRadius.circular(8);
BorderRadius bradiusSharp = BorderRadius.circular(4);
