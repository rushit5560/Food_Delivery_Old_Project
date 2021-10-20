import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';
import 'package:food_app/common/images_path.dart';
import 'package:food_app/pages/order_history_page.dart';
import 'package:food_app/pages/profile_page.dart';
import 'package:food_app/pages/select_city_page.dart';
import 'package:food_app/pages/sign_in_page.dart';

class CstDrawer extends StatelessWidget {
  const CstDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Center(
                child: Text('User Name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: Colors.white)),
              ),
              decoration: BoxDecoration(
                color: Color(0xFF000000),
                image: DecorationImage(
                  image: AssetImage(ImagePath.drawerimg),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.dstATop),
                ),
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Container(
                    transform: Matrix4.translationValues(0, -65, 0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(ImagePath.profile),
                      radius: 60,
                      backgroundColor: ColorRes.kGreenColor,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 3,
                    child: Container(
                      transform: Matrix4.translationValues(0, -65, 0),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(
                          Icons.camera_alt_rounded,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, -25, 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Text('Menu',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black),),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 2,
                    indent: 12,
                    endIndent: 12,
                  ),

                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: GestureDetector(
                      onTap: () {
                        print('Home');
                        Navigator.pop(context);
                        },
                      child: Row(
                        children: [
                          Icon(Icons.home_rounded, color: Colors.grey,size: 25,),
                          SizedBox(width: 10),
                          Text('Home', style: TextStyle(color: Colors.grey, fontSize: 17),),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: GestureDetector(
                      onTap: () {
                        print('Select City');
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SelectCityPage()));
                        },
                      child: Row(
                        children: [
                          Icon(Icons.send_rounded, color: Colors.grey,size: 25,),
                          SizedBox(width: 10),
                          Text('Select City', style: TextStyle(color: Colors.grey, fontSize: 17),),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: GestureDetector(
                      onTap: ()
                      {
                        print('My Account');
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.person_rounded, color: Colors.grey,size: 25,),
                          SizedBox(width: 10),
                          Text('My Account', style: TextStyle(color: Colors.grey, fontSize: 17),),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: GestureDetector(
                      onTap: () {
                        print('My Order');
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => OrderHistoryPage()));
                        },
                      child: Row(
                        children: [
                          Icon(Icons.shopping_bag_rounded, color: Colors.grey,size: 25,),
                          SizedBox(width: 10),
                          Text('My Order', style: TextStyle(color: Colors.grey, fontSize: 17),),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: GestureDetector(
                      onTap: () {
                        print('LogIn');
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.login_rounded, color: Colors.grey,size: 25,),
                          SizedBox(width: 10),
                          Text('LogIn', style: TextStyle(color: Colors.grey, fontSize: 17),),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Text('Menu',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black),),
                      ],
                    ),
                  ),

                  Divider(
                    color: Colors.grey,
                    thickness: 2,
                    indent: 12,
                    endIndent: 12,
                  ),
                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: GestureDetector(
                      onTap: () {
                        print('About Us');
                        Navigator.pop(context);
                        },
                      child: Row(
                        children: [
                          Icon(Icons.star_rounded, color: Colors.grey,size: 25,),
                          SizedBox(width: 10),
                          Text('About Us', style: TextStyle(color: Colors.grey, fontSize: 17),),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: GestureDetector(
                      onTap: () {
                        print('Terms & Condition');
                        Navigator.pop(context);
                        },
                      child: Row(
                        children: [
                          Icon(Icons.info_rounded, color: Colors.grey,size: 25,),
                          SizedBox(width: 10),
                          Text('Terms & Condition', style: TextStyle(color: Colors.grey, fontSize: 17),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
