import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';
import 'package:food_app/common/images_path.dart';
import 'package:image_picker/image_picker.dart';

class EditAccountPage extends StatefulWidget {
  @override
  _EditAccountPageState createState() => _EditAccountPageState();
}

class _EditAccountPageState extends State<EditAccountPage> {
  File ? _image;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Account'),
        centerTitle: true,
        backgroundColor: ColorRes.kGreenColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // appBar(context),
            SizedBox(height: 20),
            imageProfile(context),
            SizedBox(height: 20),
            textFields(),
            buttons(context),
          ],
        ),
      ),
    );
  }

  Widget imageProfile(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          _image != null ?
          Container(
            width: 150,
            height: 150,
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
          ) :
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(ImagePath.profile),
                  fit: BoxFit.cover,
                )),
          ),
          Positioned(
            right: 4,
            bottom: 17,
            child: GestureDetector(
              onTap: () {
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
    );
  }

  Widget textFields() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              height: 50,
              child: TextFormField(
                cursorColor: ColorRes.kGreenColor,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "User Name",
                  contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              height: 50,
              child: TextFormField(
                cursorColor: ColorRes.kGreenColor,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "Phone No.",
                  contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              height: 50,
              child: TextFormField(
                cursorColor: ColorRes.kGreenColor,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "Email",
                  contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              height: 50,
              child: TextFormField(
                cursorColor: ColorRes.kGreenColor,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "Address",
                  contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buttons(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              changePasswordDialog(context);
            },
            child: Container(
              width: deviceWidth * 0.45,
              decoration: BoxDecoration(
                  color: ColorRes.kGreenColor, borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Change Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: deviceWidth * 0.28,
              decoration: BoxDecoration(
                  color: ColorRes.kGreenColor, borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Update',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  changePasswordDialog(BuildContext context) {

    TextEditingController oldPassController = TextEditingController();
    TextEditingController newPassController = TextEditingController();
    TextEditingController newCPassController = TextEditingController();
    String oldPass, newPass, newCPass;

    final deviceWidth = MediaQuery.of(context).size.width;

    return showDialog(
      barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(

            content: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text('x', style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      height: 50,
                      child: TextFormField(
                        controller: oldPassController,
                        cursorColor: ColorRes.kGreenColor,
                        maxLines: 1,
                        validator: (value){
                          if(value!.isEmpty || value.length == null){
                            return "This Field Should not be Empty";
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "Old Password",
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                          errorBorder: OutlineInputBorder(),
                          focusedErrorBorder: OutlineInputBorder(),

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      height: 50,
                      child: TextFormField(
                        controller: newPassController,
                        cursorColor: ColorRes.kGreenColor,
                        maxLines: 1,
                        validator: (value){
                          if(value!.isEmpty || value.length == null){
                            return "This Field Should not be Empty";
                          }
                          if(value.length < 6){
                            return "Password Length Should be More then 6 Character";
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "New Password",
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                          errorBorder: OutlineInputBorder(),
                          focusedErrorBorder: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      height: 50,
                      child: TextFormField(
                        controller: newCPassController,
                        cursorColor: ColorRes.kGreenColor,
                        maxLines: 1,
                        validator: (value){
                          if(value!.isEmpty || value.length == null){
                            return "This Field Should not be Empty";
                          }
                          if(value.length < 6){
                            return "Password Length Should be More then 6 Character";
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                          errorBorder: OutlineInputBorder(),
                          focusedErrorBorder: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if(newPassController.text.trim().toString() == newCPassController.text.trim().toString()){
                        if(formKey.currentState!.validate()){
                          oldPass = oldPassController.text.trim().toString();
                          newPass = newPassController.text.trim().toString();
                          newCPass = newCPassController.text.trim().toString();
                          print('$oldPass & $newPass & $newCPass');
                        }
                      }
                      else{
                        print('Password & Confirm Password are nto match');
                      }

                    },
                    child: Container(
                      width: deviceWidth,
                      decoration: BoxDecoration(
                          color: ColorRes.kGreenColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10),
                            child: Text(
                              'Reset',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
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
