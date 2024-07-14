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
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 255, 152, 7),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Areej jawaid'),
              accountEmail: Text('areejjawaid@gmail.com'),
              currentAccountPicture: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/img.jpg')),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Hello welcome back after $Days and your name $Name"),
        ),
      ),
    );
  }
}
