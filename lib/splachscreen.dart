import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled43/secondscreen.dart';
class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                secondscreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.greenAccent,

      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("images/carrot.png"),width: 80,height: 80,),
              Column(
             mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("nectar",style: TextStyle(color: Colors.white,fontSize: 60),),
                  Text("online groceriet",style: TextStyle(color: Colors.white,letterSpacing: 7),)
                ],
              )
            ],

          ),
        ),
        ),

    );
  }
}
