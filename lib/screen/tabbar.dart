import 'package:cupertinoapp/screen/cart.dart';
import 'package:cupertinoapp/screen/home_page.dart';
import 'package:cupertinoapp/screen/search.dart';
import 'package:flutter/cupertino.dart';

class Tab extends StatefulWidget {
  const Tab({Key? key}) : super(key: key);

  @override
  State<Tab> createState() => _TabState();
}

class _TabState extends State<Tab> {
  List l3 = [Home_Page(), Search_Screen(), Cart()];
  dynamic index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: l3[index]),
            CupertinoTabBar(
              backgroundColor: CupertinoColors.white,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home), label: "Products"),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.cart), label: "Cart"),
              ],
              onTap: (value) {
                setState(() {
                  index = value;
                });
              },
              currentIndex: index,
              activeColor: CupertinoColors.activeBlue,
              inactiveColor: CupertinoColors.black,
            ),
          ],
        ),
      ),
    );
  }
}
