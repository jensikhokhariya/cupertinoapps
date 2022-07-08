import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  var initalDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            "Shopping Cart",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          color: CupertinoColors.white,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.person_alt,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Name"),
                ],
              ),
              Divider(
                thickness: 1,
                height: 30,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.mail_solid,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Email"),
                ],
              ),
              Divider(
                thickness: 1,
                height: 30,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.location_solid,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Location"),
                ],
              ),
              Divider(
                thickness: 1,
                height: 30,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.clock,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Chose dilivery time"),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                height: 30,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: Image.asset("assets/images/bag.jpeg"),
                  ),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Text(
                        "Bag",
                        style: TextStyle(color: CupertinoColors.black),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "200 RS",
                        style: TextStyle(color: CupertinoColors.inactiveGray),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text("200 Rs",style: TextStyle(color: CupertinoColors.black),),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: Image.asset("assets/images/belt.webp"),
                  ),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Text(
                        "Belt",
                        style: TextStyle(color: CupertinoColors.black),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "250 RS",
                        style: TextStyle(color: CupertinoColors.inactiveGray),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text("250 Rs",style: TextStyle(color: CupertinoColors.black),),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: Image.asset("assets/images/gogal.jpeg"),
                  ),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Text(
                        "Gogal",
                        style: TextStyle(color: CupertinoColors.black),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "230 RS",
                        style: TextStyle(color: CupertinoColors.inactiveGray),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text("230 Rs",style: TextStyle(color: CupertinoColors.black),),
                ],
              ),
              Divider(
                thickness: 1,
                height: 1,
              ),
              Row(
                children: [
                  Spacer(),
                  Text("Total",style: TextStyle(color: CupertinoColors.black,fontSize: 25),),
                  SizedBox(width: 20,),
                  Text("680 Rs",style: TextStyle(color: CupertinoColors.black,fontSize: 25),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void DatePicker() async {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext builder) {
          return Container(
            height: MediaQuery.of(context).copyWith().size.height,
            color: CupertinoColors.white,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.dateAndTime,
              onDateTimeChanged: (value) {
                if (value != null || value != initalDate)
                  setState(() {
                    initalDate = value;
                  });
              },
              initialDateTime: DateTime.now(),
              minimumYear: 2022,
              maximumYear: 2050,
              backgroundColor: CupertinoColors.darkBackgroundGray,
            ),
          );
        });
  }
}
