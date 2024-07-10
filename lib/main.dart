// import 'package:app/main_screen.dart';
import 'package:app/Pages/Home_page.dart';
import 'package:app/Pages/Login_page.dart';
import 'package:app/Utils/Routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.amber)),
      // home: HomePage(),
      routes: {
        '/': (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
