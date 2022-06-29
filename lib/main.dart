import 'package:cupertinoapp/screen/cart.dart';
import 'package:cupertinoapp/screen/home_page.dart';
import 'package:cupertinoapp/screen/search.dart';
import 'package:cupertinoapp/screen/tabbar.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(
    CupertinoApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'bottem',
      routes: {
        '/':(context)=>Home_Page(),
        'bottem':(context)=>Tab(),
        'show':(context)=>Search_Screen(),
        'shop':(context)=>Cart(),
      },
    ),
  );
}

