import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search_Screen extends StatefulWidget {
  const Search_Screen({Key? key}) : super(key: key);

  @override
  State<Search_Screen> createState() => _Search_ScreenState();
}

class _Search_ScreenState extends State<Search_Screen> {
  List img = [
    "assets/images/shirt.jpeg",
    "assets/images/tshirt1.jpeg",
    "assets/images/tshirt2.png",
    "assets/images/tshirt4.webp",
    "assets/images/tshirt5.webp",
    "assets/images/belt.webp",
  ];
  List l5 = ["120 RS", "300 RS", "400 Rs", "200 Rs", "150 RS", "100 Rs"];
  List name = ["shirt", "tshirt", "paln tshirt", "tshirt", "shirt", "belt"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: CupertinoColors.placeholderText,
              ),
              child: Row(
                children: [
                  Icon(CupertinoIcons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Shirt",
                    style: TextStyle(color: CupertinoColors.white),
                  ),
                  SizedBox(
                    width: 250,
                  ),
                  Icon(CupertinoIcons.clear_thick_circled),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: img.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.topLeft,
                            child: Image.asset("${[index]}"),
                          ),
                          SizedBox(width: 5),
                          Column(
                            children: [
                              Text(
                                "${name[index]}",
                                style: TextStyle(color: CupertinoColors.black),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "${l5[index]}",
                                style: TextStyle(
                                    color: CupertinoColors.inactiveGray),
                              ),
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
