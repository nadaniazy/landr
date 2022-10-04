import 'package:flutter/material.dart';
import 'package:untitled43/homepage.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 320,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 245),
                  child: Container(
                    height: 510,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Text(
                        "Login to your account",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 300),
                  child: Container(
                    height: 380,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: Row(
                                children: [
                                  FloatingActionButton(
                                    elevation: 10,
                                    mini: true,
                                    onPressed: () {},
                                    child: Image(
                                      image: AssetImage("images/facebook.png"),
                                      height: 25,
                                      width: 25,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  FloatingActionButton(
                                    elevation: 10,
                                    mini: true,
                                    onPressed: () {},
                                    child: Image(
                                      image: AssetImage("images/google.png"),
                                      height: 25,
                                      width: 25,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  FloatingActionButton(
                                    elevation: 10,
                                      mini: true,
                                      onPressed: () {},
                                      child: Icon(Icons.telegram_sharp))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "or use email account",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Email",
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.greenAccent,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                filled: true,
                                fillColor: Colors.grey.shade200,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.greenAccent,
                                ),
                                suffixIcon: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.greenAccent,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                filled: true,
                                fillColor: Colors.grey.shade200,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Text("Remember me"),
                              ],
                            ),
                            SizedBox(height: 15,),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.greenAccent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20))),
                                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 110,vertical: 15),
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ))
                          ],
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
