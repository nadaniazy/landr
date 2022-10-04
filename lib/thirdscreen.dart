import 'package:flutter/material.dart';
import 'package:untitled43/forthscreeb.dart';
class thirdscreen extends StatefulWidget {
  const thirdscreen({Key? key}) : super(key: key);

  @override
  State<thirdscreen> createState() => _thirdscreenState();
}

class _thirdscreenState extends State<thirdscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage("images/backgroundsignin.png"),height: 400,width: double.infinity,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Get your groceries",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("with nactar",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                      Image(image: AssetImage("images/country_icon.png"),width: 40,height: 40,),
                          SizedBox(width: 5,),
                          Text("+880"),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(thickness: 2,),
                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Or connect with social media",style: TextStyle(color: Colors.grey),),
                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(
                          style:
                          ElevatedButton.styleFrom(primary: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>forthscreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 18),
                            child: Row(
                              children: [
                                Image(image: AssetImage("images/google.png"),width: 15,height: 15,),
                                SizedBox(width: 20,),
                                Text("Continues with Google"),
                              ],
                            ),
                          )),
                      SizedBox(height: 10,),
                      ElevatedButton(
                          style:
                          ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 18),
                            child: Row(
                              children: [
                                Image(image: AssetImage("images/facebook.png"),width: 15,height: 15,),
                                SizedBox(width: 20,),
                                Text("continues with Facebook"),
                              ],
                            ),
                          )),

                    ],
                  ),
                )


              ],
            ),
          ),

        ),

    );
  }
}
