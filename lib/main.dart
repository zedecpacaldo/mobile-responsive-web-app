import 'package:flutter/material.dart';
import 'package:portfolioflutter/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioflutter/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data Science Project',
      theme: ThemeData.dark().copyWith(
        primaryColor:  primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: Colors.white)
          .copyWith(
          bodyText1: const TextStyle(color: bodyTextColor),
          bodyText2: const TextStyle(color: bodyTextColor)
        )
      ),
      home: MainScreen(),
    );
  }
}
