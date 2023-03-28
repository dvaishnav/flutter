import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routers.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      initialRoute: AppRouts.loginRoute,
      routes: {
        AppRouts.loginRoute: (context) => LoginPage(),
        AppRouts.homeRoute: (context) => HomePage(),
      },
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        primarySwatch: Colors.amber,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
    );
  }
}
