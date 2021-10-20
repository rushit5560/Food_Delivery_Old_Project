import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:food_app/pages/cart_screen/cart_page.dart';
import 'package:food_app/pages/chat_screen/chat_page.dart';
import 'package:food_app/pages/home_page_screen/home_page.dart';
import 'package:food_app/pages/profile_screen/profile_page.dart';
import 'package:food_app/pages/search_screen/search_page.dart';

class IndexPage extends StatefulWidget {

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  /*int currentTab = 4;
  Widget currentScreen = HomePage();
  final PageStorageBucket bucket = PageStorageBucket();*/

  int selectedIndex = 2;
  final screens = [CartPage(), SearchPage(), HomePage(), ChatScreen(), ProfilePage()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: selectedIndex,
        items: [
          Icon(Icons.shopping_cart_rounded, size: 28, color: Colors.white),
          Icon(Icons.search_rounded, size: 28, color: Colors.white),
          Icon(Icons.home_rounded, size: 28, color: Colors.white),
          Icon(Icons.chat_bubble_outlined, size: 28, color: Colors.white),
          Icon(Icons.person_rounded, size: 28, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        // animationCurve: Curves.bounceInOut,
        animationDuration: Duration(milliseconds: 500),
        backgroundColor: Colors.orangeAccent,
        color: ColorRes.kGreenColor,
        buttonBackgroundColor: Colors.transparent,height: 60,
      ),


      /*body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home, color: Colors.white),
        backgroundColor: Colors.orangeAccent,

        onPressed: () {
          setState(() {
            currentScreen = HomePage();
            currentTab = 4;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: ColorRes.kGreenColor,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Container(
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentTab = 0;
                            currentScreen = CartPage();
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_cart_rounded,
                              size: 30,
                              color: currentTab == 0
                                  ? Colors.orangeAccent
                                  : Colors.white,
                            ),
                            Text(
                              'Cart',
                              style: TextStyle(
                                  color: currentTab == 0
                                      ? Colors.orangeAccent
                                      : Colors.white),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = SearchPage();
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search_rounded,
                              size: 30,
                              color: currentTab == 1
                                  ? Colors.orangeAccent
                                  : Colors.white,
                            ),
                            Text(
                              'Search',
                              style: TextStyle(
                                  color: currentTab == 1
                                      ? Colors.orangeAccent
                                      : Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentTab = 2;
                            currentScreen = ChatScreen();
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.chat_bubble_rounded,
                              size: 30,
                              color: currentTab == 2
                                  ? Colors.orangeAccent
                                  : Colors.white,
                            ),
                            Text(
                              'Chat',
                              style: TextStyle(
                                  color: currentTab == 2
                                      ? Colors.orangeAccent
                                      : Colors.white),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentTab = 3;
                            currentScreen = ProfilePage();
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_rounded,
                              size: 30,
                              color: currentTab == 3
                                  ? Colors.orangeAccent
                                  : Colors.white,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                  color: currentTab == 3
                                      ? Colors.orangeAccent
                                      : Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),*/
    );
  }
}
