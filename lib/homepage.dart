import 'package:flutter/material.dart';
import 'package:untitled43/chat.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool c=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 380,
            child: Image(image: AssetImage("images/welcome_image.png"),),
          ),
          SizedBox(height: 25,),
          Text("welcome to our freedom",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          Text("messaging app",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("freedom talk any person of your .",style: TextStyle(color: Colors.grey,fontSize: 13),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:3),
            child: Text("mother language.",style: TextStyle(color: Colors.grey,fontSize: 13),),
          ),
          SizedBox(height: 100,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>chat()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("skip"),
                Icon(Icons.arrow_forward_ios_sharp),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
