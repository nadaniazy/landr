import 'package:flutter/material.dart';
import 'package:untitled43/login.dart';
class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool show=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 180),
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
                        "Create your account",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 240),
                  child: Container(
                    height: 515,
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
                              decoration: InputDecoration(
                                hintText: "Name",
                                prefixIcon: Icon(
                                  Icons.person,
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
                                suffixIcon: IconButton(icon:show?Icon(Icons.remove_red_eye):Icon(Icons.lock_person_sharp),
                                  color: Colors.greenAccent,onPressed: (){
                                  setState(() {
                                   
                                    show=!show;
                                  });
                                  },
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
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 110,vertical: 15),
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account",style: TextStyle(color: Colors.grey),),
                                SizedBox(width: 5,),
                                TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                                }, child: Text("Login here",style: TextStyle(color: Colors.greenAccent),)),

                              ],
                            ),
                        //   TextButton(onPressed: (){}, child: Text("forget password")),

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
