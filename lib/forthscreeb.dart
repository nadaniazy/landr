import 'package:flutter/material.dart';


class forthscreen extends StatefulWidget {
  const forthscreen({Key? key}) : super(key: key);

  @override
  State<forthscreen> createState() => _forthscreenState();
}

class _forthscreenState extends State<forthscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 110),
                    child: Text(
                      "find product",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search store",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Colors.grey.shade900,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade300,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // GridView.builder(scrollDirection: Axis.vertical,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: products.length,childAspectRatio: 2,crossAxisSpacing: 2,mainAxisSpacing: 2), itemBuilder: (context,_index){
                  //   return  products[_index];
                  // }
                  //
                  GridView(
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    shrinkWrap: true,
                    children: [
                    buildContainer(AssetImage("images/vegetable.png"),"fresh fruit&vegetables", Colors.indigoAccent),
                      buildContainer(AssetImage("images/oil.png"),"cooking oil & ghee", Colors.redAccent),
                      buildContainer(AssetImage("images/meet.png"),"meat & fish", Colors.yellow),
                      buildContainer(AssetImage("images/bakery.png"),"bakery & snacks", Colors.green),
                      buildContainer(AssetImage("images/dairy.png"),"daily & eggs", Colors.blueAccent),
                      buildContainer(AssetImage("images/beverages.png"),"beverages", Colors.lime),
                      buildContainer(AssetImage("images/vegetable.png"),"fresh fruit&vegetables", Colors.amberAccent),
                      buildContainer(AssetImage("images/oil.png"),"cooking oil & ghee", Colors.lightBlueAccent),
                      buildContainer(AssetImage("images/meet.png"),"meat & fish", Colors.cyan),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container buildContainer( AssetImage image,String title, Color mainColor) {
    return Container(
                  width: 150,
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.greenAccent.shade700),
                    borderRadius: BorderRadius.circular(20),
                    color: mainColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        width: 120,
                        image: image,
                        height: 100,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                         title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                );
  }
}
