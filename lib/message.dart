import 'package:flutter/material.dart';


class message extends StatefulWidget {
  const message({Key? key}) : super(key: key);

  @override
  State<message> createState() => _messageState();
}

class _messageState extends State<message> {
  bool status=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: status?Colors.black:Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 35,
                child: Image(
                  image: AssetImage("images/user.png"),
                ),
              ),
              CircleAvatar(
                radius: 7,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.greenAccent,
                ),
              )
            ],
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Kristen Wasten",style: TextStyle(fontSize: 15),),
            Text("Online",style: TextStyle(fontSize: 15)),


        ],
        ),
        elevation: 0,
        actions: [
          Icon(Icons.local_phone),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.videocam),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 200,bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,

          children: [
            // FlutterSwitch(
            //   width: 70.0,
            //   height: 40.0,
            //   valueFontSize: 15.0,
            //   toggleSize: 25.0,
            //   value: status,
            //   borderRadius: 30.0,
            //   padding: 8.0,
            //   showOnOff: true,
            //   onToggle: (val) {
            //     setState(() {
            //       status = val;
            //     });
            //   },
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            offset: Offset(0, 4),
            blurRadius: 32,
          )
        ]),
        child: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(
                  Icons.mic,
                  color: Colors.greenAccent,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.sentiment_satisfied_rounded,
                            color: Colors.grey.shade700,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Type message",
                              ),
                            ),
                          ),
                          Icon(
                            Icons.attach_file,
                            color: Colors.grey.shade700,
                            size: 30,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.camera_alt,
                            color: Colors.grey.shade700,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
