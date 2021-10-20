import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';
import 'package:food_app/common/custom_drawer.dart';
import 'package:food_app/common/images_path.dart';
import 'package:food_app/pages/edit_account_page.dart';
import 'package:food_app/pages/order_history_page.dart';
import 'package:food_app/pages/update_profile_page.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File ? _image;
  final picker = ImagePicker();
  //File  ? _image;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(

      /*appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: ColorRes.kGreenColor,
      ),*/

      appBar: AppBar(
        backgroundColor: ColorRes.kGreenColor,

        title: Image(
          image: AssetImage(ImagePath.logo),
          width: deviceWidth * 0.25,
        ),
      ),
      endDrawer: CstDrawer(),

      body: Column(
        children: [
          // appBar(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: deviceHeight * 0.28,
              width: deviceWidth,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(ImagePath.profile_page_img),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.dstATop,
                  ),
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'User Name',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Container(
            child: Stack(
              children: [
                _image != null ?
                Container(
                  width: 135,
                  height: 135,
                  transform: Matrix4.translationValues(0, -65, 0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: FileImage(_image!),
                      //image: AssetImage(ImagePath.profile),
                      //image: _image != null? ,
                      fit: BoxFit.cover,
                    ),
                  ),
                  //child: Image.file(_image!,),
                ) :  Container(
                  width: 135,
                  height: 135,
                  transform: Matrix4.translationValues(0, -65, 0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                     image: DecorationImage(
                      image: AssetImage(ImagePath.profile),
                      //image: _image != null? ,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 3,
                  bottom: 80,
                  child: GestureDetector(
                    onTap: (){
                      _showPicker(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorRes.kGreenColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.add_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            child: Column(
              children: [

                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EditAccountPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                    child: Material(
                      borderRadius: BorderRadius.circular(8),
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: deviceWidth,
                        child: Text('Account Detail',textScaleFactor: 1.1,
                        style: TextStyle(
                          color: Colors.black,
                        ),),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OrderHistoryPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                    child: Material(
                      borderRadius: BorderRadius.circular(8),
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: deviceWidth,
                        child: Text('Order Detail',textScaleFactor: 1.1,
                          style: TextStyle(
                            color: Colors.black,
                          ),),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateProfilePage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                    child: Material(
                      borderRadius: BorderRadius.circular(8),
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: deviceWidth,
                        child: Text('Change Address',textScaleFactor: 1.1,
                          style: TextStyle(
                            color: Colors.black,
                          ),),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
     /* body: SingleChildScrollView(
        child: Column(
          children: [
            appBar(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: deviceHeight * 0.28,
                width: deviceWidth,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(ImagePath.profile_page_img),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5),
                      BlendMode.dstATop,
                    ),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'User Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Container(
                    width: 135,
                    height: 135,
                    transform: Matrix4.translationValues(0, -65, 0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(ImagePath.profile),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 3,
                    bottom: 80,
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorRes.kGreenColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.add_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditAccountPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 5),
                      child: Material(
                        borderRadius: BorderRadius.circular(8),
                        elevation: 10,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: deviceWidth,
                          child: Text(
                            'Account Detail',
                            textScaleFactor: 1.1,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderHistoryPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 5),
                      child: Material(
                        borderRadius: BorderRadius.circular(8),
                        elevation: 10,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: deviceWidth,
                          child: Text(
                            'Order Detail',
                            textScaleFactor: 1.1,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UpdateProfilePage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 5),
                      child: Material(
                        borderRadius: BorderRadius.circular(8),
                        elevation: 10,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: deviceWidth,
                          child: Text(
                            'Change Address',
                            textScaleFactor: 1.1,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),*/
      ),
    );
  }

  Widget appBar() {
    return Container(
      color: ColorRes.kGreenColor,
      height: 110,
      padding: EdgeInsets.only(top: 45, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /*GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.white),
          ),*/

          Container(
            child: Text(
              "Profile",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ),

          /*Stack(
            alignment: Alignment.topRight,
            children: [
              Icon(Icons.lock, color: Colors.white,),

              Container(
                height: 15, width: 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orangeAccent
                ),
                child: Center(
                  child: Text("2",style: TextStyle(color: Colors.white, fontSize: 12),),
                ),
              )
            ],
          ),*/
        ],
      ),
    );
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Gallery'),
                      onTap: () {
                        //_imgFromGallery();
                        gallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      camera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  Future camera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future gallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

}
