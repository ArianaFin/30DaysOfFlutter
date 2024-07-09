import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int Days = 30;
  final String Name = "Areej";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          child: Text("Hello welcome back after $Days and your name $Name"),
        ),
      ),
    );
  }
}
