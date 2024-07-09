// import 'package:app/main_screen.dart';
import 'package:app/Pages/Home_page.dart';
import 'package:app/Pages/Login_page.dart';
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
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: '/home',
      // home: HomePage(),
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/Login': (context) => LoginPage()
      },
    );
  }
}
