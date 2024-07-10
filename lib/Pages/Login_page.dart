import 'package:app/Utils/Routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool isTrue = false;
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
            'Welcome $name',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
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
                  InkWell(
                    onTap: () async {
                      setState(() {
                        isTrue = !isTrue;
                      });

                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute)
                          .then((_) {
                        setState(() {
                          isTrue = false;
                        });
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: isTrue ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: isTrue
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(isTrue ? 50 : 8)),
                    ),
                  )
                  // ElevatedButton(
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     },
                  //     style: TextButton.styleFrom(
                  //       minimumSize: Size(400, 60),
                  //       backgroundColor: Colors.blue,
                  //       foregroundColor: Colors.white,
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(10)),
                  //     ),
                  //     child: Text("Login"))
                ],
              ))
        ]),
      ),
    );
  }
}
