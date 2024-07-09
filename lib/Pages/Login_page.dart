import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Column(children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Image.asset(
              'assets/images/img.jpg',
              fit: BoxFit.contain,
            ),
          ),
          Text(
            'Welcome',
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print("hello click");
                      },
                      style: TextButton.styleFrom(
                        minimumSize: Size(400, 60),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      child: Text("Submit"))
                ],
              ))
        ]),
      ),
    );
  }
}
