import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';
import 'package:food_app/common/images_path.dart';

class UpdateProfilePage extends StatelessWidget {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController addressController = TextEditingController();
  // TextEditingController emailController = TextEditingController();
  // TextEditingController phoneNoController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  // TextEditingController cpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: deviceHeight * 0.28,
              width: deviceWidth,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage(ImagePath.signin),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.dstATop,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Address',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, -70, 0),
              padding: EdgeInsets.all(20),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: deviceWidth,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Personal Information',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Form(
                        key: formKey,
                        child: Column(
                          children: [

                            TextFormField(
                              controller: addressController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Address is Required";
                                }
                              },
                              cursorColor: ColorRes.kGreenColor,
                              decoration: InputDecoration(
                                hintText: "Enter New Address",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: ColorRes.kGreenColor),
                                ),
                              ),
                            ),
                            /*SizedBox(height: 10),

                            TextFormField(
                              controller: emailController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Email is Required";
                                }
                                if (!value.contains('@')) {
                                  return "Email Should be Valid";
                                }
                              },
                              cursorColor: ColorRes.kGreenColor,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "Email",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: ColorRes.kGreenColor),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),

                            TextFormField(
                              controller: phoneNoController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Phone No. is Required";
                                }
                                if (value.length != 10) {
                                  return "Phone No. Should be 10 Digits";
                                }
                              },
                              cursorColor: ColorRes.kGreenColor,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: "Phone No.",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: ColorRes.kGreenColor),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),

                            TextFormField(
                              controller: passwordController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Password is Required";
                                }
                                if (value.length < 6) {
                                  return "Password Length Should be More then 6 Character";
                                }
                              },
                              cursorColor: ColorRes.kGreenColor,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: ColorRes.kGreenColor),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),

                            TextFormField(
                              controller: cpasswordController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Confirm Password is Required";
                                }
                                if (value.length < 6) {
                                  return "Confirm Password Length Should be More then 6 Character";
                                }
                              },
                              cursorColor: ColorRes.kGreenColor,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: " Confirm Password",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: ColorRes.kGreenColor),
                                ),
                              ),
                            ),*/
                            SizedBox(height: 35),

                            GestureDetector(
                              onTap: () {
                                // username = userNameController.text.toString().trim();
                                // email = emailController.text.toString().toLowerCase().trim();
                                // phoneno = phoneNoController.text.toString();
                                // password = passwordController.text.toString().trim();
                                // cpassword = cpasswordController.text.toString().trim();

                                if (formKey.currentState!.validate()) {
                                  print('Inside formkey');
                                  Navigator.pop(context);
                                  /*if(password == cpassword) {
                                    print(
                                        'Pressed on Sign in $username &  $email & $phoneno &  $password  & $cpassword');
                                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                                        builder: (BuildContext context) => IndexPage()));
                                  }
                                  else{
                                    print('Password & Confirm Password are Not same');
                                  }*/
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
                                          vertical: 8.0),
                                      child: Text(
                                        'Update Address',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
