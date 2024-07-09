// import 'package:app/main_screen.dart';
import 'package:app/Pages/Home_page.dart';
import 'package:app/Pages/Login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 255, 131, 7),
        ),
      ),
      // initialRoute: '/home',
      // home: HomePage(),
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/Login': (context) => LoginPage()
      },
    );
  }
}
