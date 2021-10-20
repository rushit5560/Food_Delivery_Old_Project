import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';
import 'package:food_app/common/images_path.dart';

class ForgotPasswordPage extends StatelessWidget {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  String? email;


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
                  'Forgot Password?',
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
                        'Don\'t Worry, You Can Reset Here',
                        softWrap: true,
                        maxLines: 2,
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

                            SizedBox(height: 35),
                            GestureDetector(
                              onTap: () {
                                email = emailController.text
                                    .toString()
                                    .toLowerCase();

                                print('Pressed on Sign in $email');
                                if (formKey.currentState!.validate()) {}
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
                                        'Reset',
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

  Widget appBar(BuildContext context){
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
            child: Text("Edit Account", style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),),
          ),
          // Container(),
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
}
