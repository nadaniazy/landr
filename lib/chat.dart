import 'package:flutter/material.dart';
import 'package:untitled43/message.dart';

class chat extends StatefulWidget {
  const chat({Key? key}) : super(key: key);

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  int selectedcurrent=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey.shade700,
        currentIndex: selectedcurrent,
        showUnselectedLabels: true,
        onTap: (int index){
          setState(() {
            selectedcurrent=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.messenger),label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.people),label: "people"),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: "Calls"),
          BottomNavigationBarItem(icon: CircleAvatar(
            child: Image(image: AssetImage("images/user.png"),),
          radius: 17,
          ),
            label: "profile"
          ),
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.greenAccent,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("chat"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.search_rounded),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.greenAccent),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            primary: Colors.white),
                        child: Text(
                          "Recent message",
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            primary: Colors.transparent),
                        child: Text(
                          "Active",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  buildListTile("Jonny Wilson", "Hope  you are doing well",
                      AssetImage("images/user.png"), "0.03am"),
                  SizedBox(
                    height: 15,
                  ),
                  buildListTile("Esther Howard", "Hallo abdallah i am",
                      AssetImage("images/user_5.png"), "0.04am"),
                  SizedBox(
                    height: 15,
                  ),
                  buildListTile("Ralph EdWards", "Do you have updated",
                      AssetImage("images/user_3.png"), "0.04am"),
                  SizedBox(
                    height: 15,
                  ),
                  buildListTile("Jacob Jones", "you are welcome",
                      AssetImage("images/user_4.png"), "0.05am"),
                  SizedBox(
                    height: 20,
                  ),
                  buildListTile("Albert Flores", "Thanks",
                      AssetImage("images/user_5.png"), "0.01am"),
                  SizedBox(
                    height: 15,
                  ),
                  buildListTile("Jonny Wilson", "Hope  you are doing well",
                      AssetImage("images/user.png"), "0.03am"),
                  SizedBox(
                    height: 15,
                  ),
                  buildListTile("Esther Howard", "Hallo abdallah i am",
                      AssetImage("images/user_4.png"), "0.04am"),
                  SizedBox(
                    height: 15,
                  ),
                  buildListTile("Ralph EdWards", "Do you have updated",
                      AssetImage("images/user_3.png"), "0.04am"),
                  SizedBox(
                    height: 20,
                  ),
                  buildListTile("Albert Flores", "Thanks",
                      AssetImage("images/user_5.png"), "0.01am"),
                  SizedBox(
                    height: 15,
                  ),
                  buildListTile("Jonny Wilson", "Hope  you are doing well",
                      AssetImage("images/user.png"), "0.03am"),

                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.person_add,color: Colors.white,),
      ),
    );
  }

  GestureDetector buildListTile(
      String title, String subtitle, AssetImage image, String trailing) {
    return GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>message()));},
      child: ListTile(
        leading: Stack(
          alignment: Alignment.topLeft,
         children: [
           CircleAvatar(
             radius: 30,
             backgroundImage: image,
           ),
           CircleAvatar(
             backgroundColor: Colors.white,
             radius: 7,
             child: CircleAvatar(

               backgroundColor: Colors.greenAccent,
               radius: 5,
             ),
           )
         ],

        ),
        title: Text(title),
        subtitle: Text(
          subtitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Text(trailing),
      ),
    );
  }
}
