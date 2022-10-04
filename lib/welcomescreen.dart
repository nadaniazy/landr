import 'package:flutter/material.dart';
import 'package:untitled43/register.dart';

import 'login.dart';

class welcomescreen extends StatefulWidget {
  const welcomescreen({Key? key}) : super(key: key);

  @override
  State<welcomescreen> createState() => _welcomescreenState();
}

class _welcomescreenState extends State<welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("images/Logo_light.png"),
              width: 220,
              height: 120,
            ),
            SizedBox(
              height: 25,
            ),
            RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.orangeAccent,
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => login()));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  child: Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.greenAccent,
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => register()));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),

          ],
        ),
      ),
    );
  }
}
