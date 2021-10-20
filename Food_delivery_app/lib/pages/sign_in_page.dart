import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';
import 'package:food_app/common/images_path.dart';
import 'package:food_app/pages/IndexPage.dart';
import 'package:food_app/pages/forgot_password_page.dart';
import 'package:food_app/pages/sign_up_page.dart';

class SignInPage extends StatelessWidget {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? email, password;

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
                  'Sign In',
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
                        'Please Login To Continue',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
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
                            SizedBox(height: 35),
                            GestureDetector(
                              onTap: () {
                                email = emailController.text.toString().toLowerCase();
                                password = passwordController.text.toString().trim();
                                print(
                                    'Pressed on Sign in $email & $password');
                                if (formKey.currentState!.validate()) {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> IndexPage()));
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                                      builder: (BuildContext context) => IndexPage()));
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
                                    'Sign In',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )),
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
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
                                        'Sign Up',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Forgot Password? ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print('Pressed On Reset Here!');
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordPage()));
                                    },
                                    child: Text(
                                      'Reset Here',
                                      style: TextStyle(
                                        color: ColorRes.kGreenColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
