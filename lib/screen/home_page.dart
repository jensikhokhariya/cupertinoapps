import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List l1 = [
    "assets/images/bag.jpeg",
    "assets/images/belt.webp",
    "assets/images/gogal.jpeg",
    "assets/images/shirt.jpeg",
    "assets/images/tshirt.jpeg",
    "assets/images/watch.webp",
    "assets/images/tshirt3.webp",
  ];
 List l2=["bag","belt","gogal","shirt","tshirt","watch","Surf Shirt"];
 List l4=["120 RS","56 RS","35 Rs","250 RS","400 RS","100 RS","200 Rs"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Cupertino Store"),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: l1.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.topLeft,
                            child: Image.asset("${l1[index]}"),
                          ),
                          SizedBox(width: 5),
                          Column(
                            children: [
                              Text("${l2[index]}",style: TextStyle(color: CupertinoColors.black),),
                              SizedBox(height: 15,),
                              Text("${l4[index]}",style: TextStyle(color: CupertinoColors.inactiveGray),),
                            ],
                          ),
                          Spacer(),
                          Icon(CupertinoIcons.add_circled),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
