import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            "Shopping Cart", style: TextStyle(fontWeight: FontWeight.bold,),),
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(10),
            color: CupertinoColors.white,
          child: Column(
            children: [
              SizedBox(height: 50,),
              Row(
                children: [
                  Icon(CupertinoIcons.person_alt,size: 30,),
                  SizedBox(width: 10,),
                  Text("Name"),
                ],
              ),
              Divider(
                thickness: 1,
                height: 30,
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(CupertinoIcons.mail_solid,size: 30,),
                  SizedBox(width: 10,),
                  Text("Email"),
                ],
              ),
              Divider(
                thickness: 1,
                height: 30,
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(CupertinoIcons.location_solid,size: 30,),
                  SizedBox(width: 10,),
                  Text("Location"),
                ],
              ),
              Divider(
                thickness: 1,
                height: 30,
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(CupertinoIcons.clock,size: 30,),
                  SizedBox(width: 10,),
                  Text("Delivery time"),
                ],
              ),
              Divider(
                thickness: 1,
                height: 30,
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
