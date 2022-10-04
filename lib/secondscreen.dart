import 'package:flutter/material.dart';
import 'package:untitled43/thirdscreen.dart';

class secondscreen extends StatefulWidget {
  const secondscreen({Key? key}) : super(key: key);

  @override
  State<secondscreen> createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Image(
            image: AssetImage("images/welcomeman.png"),
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("images/carrot.png"),
                    width: 50,
                    height: 50,
                  ),
                  Text(
                    "welcome ",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  Text(
                    "to our store",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Get your groceries is as fast as one our",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Colors.greenAccent),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>thirdscreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15),
                        child: Text("Cet started"),
                      ))
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
