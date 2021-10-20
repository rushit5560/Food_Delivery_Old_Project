import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';
import 'package:food_app/common/custom_drawer.dart';
import 'package:food_app/common/images_path.dart';
import 'package:food_app/model/message_model.dart';
import 'package:food_app/pages/chat_screen/chat_screen_view_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  ChatScreenState createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  // ChatScreenViewModel? model;
  TextEditingController typeTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // model ?? (model = ChatScreenViewModel(this));
    // print("Current page --> $runtimeType");
    var kDeviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(

      /*appBar: AppBar(
        title: Text('Chat'),
        centerTitle: true,
        backgroundColor: ColorRes.kGreenColor,
        leading: Container(),
      ),*/
      // resizeToAvoidBottomInset: false,

      appBar: AppBar(
        backgroundColor: ColorRes.kGreenColor,

        title: Image(
          image: AssetImage(ImagePath.logo),
          width: kDeviceWidth * 0.25,
        ),
      ),
      endDrawer: CstDrawer(),

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: Container(
                //height: MediaQuery.of(context).size.height / 1.25,
                child: ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, int) {
                    return Column(
                      children: [
                        Text(
                          '11 July 2021',
                          textScaleFactor: 0.8,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Bubble(
                          isMe: true,
                          message:
                          "Parent Teacher Meeting will be held on Friday, 14th May'10. All parents are requested to come and meet the Teachers of their wards and discuss about their progress",
                        ),
                        Bubble(
                          isMe: true,
                          message: "Ok, We will reach at a time.",
                        ),
                        Text(
                          'Today',
                          textScaleFactor: 0.8,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Bubble(
                          isMe: false,
                          message:
                          "Dear parent, we wish your ward all the best for the SSC Exam. -Indian School, Versova, Mumbai",
                        ),
                        Bubble(
                          isMe: false,
                          message: "Dear Teacher, Thank you for reminder",
                        ),
                        Bubble(
                          isMe: true,
                          message:
                          "Can you provide extra material to my child so he can learn more from it and get good score in exams?",
                        ),
                      ],
                    );
                  },
                ),
              ),),
          message(),

        ],
      ),
    );
  }

  appBar() {
    return Container(
      color: ColorRes.kGreenColor,
      height: 118,
      padding: EdgeInsets.only(top: 60, left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /*GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
              child: Icon(Icons.arrow_back, color: Colors.white,),
          ),*/
          Container(
            child: Text(
              "Chat",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container()
        ],
      ),
    );
  }

/*chatList(){
    return Container(
      height: MediaQuery.of(context).size.height/1.3,
      child: ListView.builder(
          itemCount: model!.smsData.length +1,
          itemBuilder: (context, index) {
            bool isLast = index==model?.smsData.length;
            if(isLast) {
              return SizedBox(height: 70);
            } else {
              if(model!.smsData[index].senderId == '1' ) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 2,),
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 1.5,
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      margin: EdgeInsets.only(top: 15, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          //color: AppColor.themeColor
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: Text(model!.smsData[index].message,
                              style: TextStyle(color: Colors.white, fontSize: 15),),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.only(right: 10),
                            child: Text(model!.smsData[index].time,
                              style: TextStyle(color: Colors.white, fontSize: 13),),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 50,),

                        */
  /*Container(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset(
                              model.smsData[index].image, height: 30,),
                          ),
                        ),*/
  /*
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width / 1.7,
                          padding: EdgeInsets.only(bottom: 5),
                          margin: EdgeInsets.only(top: 15, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorRes.lightGreenColor
                          ),
                          child: Container(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text(model!.smsData[index].message),
                          ),
                        ),
                        Container(
                          //alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 10, top: 5),
                          child: Text(model!.smsData[index].time),
                        )
                      ],
                    )
                  ],
                );
              }
            }
          }),
    );
  }*/

  message() {
    return Container(
      height: 50,
      // margin: EdgeInsets.only(bottom: 50),
      padding: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorRes.lightGreenColor),
      child: Row(
        children: [
          Container(
            child: Icon(
              Icons.emoji_emotions,
              color: Colors.grey,
              size: 20,
            ),
          ),
          Expanded(
            child: Container(
              //height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  //border: Border.all(color: Colors.grey.shade400, width: 1),
                  // color: Colors.grey.shade200,
              ),
              child: TextFormField(
                controller: typeTextController,
                decoration: InputDecoration(
                    hintText: "Type Your message",
                    contentPadding: EdgeInsets.only(left: 10),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(30)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(30)),
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    /*suffixIcon: InkWell(
                      onTap: () {
                        // message: typeTextController.text;
                        typeTextController.clear();
                        setState(() {});
                      },
                      child: CircleAvatar(
                        radius: 28,
                        //backgroundColor: Colors.blue,
                        //child: Icon(Icons.send)
                        child: ClipOval(child: Icon(Icons.send)),
                      ),
                    ),*/
                ),
              ),
            ),
          ),
          Icon(
            Icons.camera_alt,
            color: Colors.grey,
            size: 22,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.picture_in_picture, color: Colors.grey, size: 22),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              typeTextController.clear();
              setState(() {});
            },
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.orangeAccent,
              //child: Icon(Icons.send)
              child: ClipOval(
                  child: Icon(
                Icons.send,
                color: Colors.white,
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class Bubble extends StatelessWidget {
  final bool? isMe;
  final String? message;

  Bubble({this.isMe, this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: isMe! ? EdgeInsets.only(left: 40) : EdgeInsets.only(right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            mainAxisAlignment:
                isMe! ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment:
                isMe! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  gradient: isMe!
                      ? LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [0.1, 1],
                          colors: [
                            Color(0xFFF6D365),
                            Color(0xFFFDA085),
                          ],
                        )
                      : LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [0.1, 1],
                          colors: [
                            Color(0xFFEBF5FC),
                            Color(0xFFEBF5FC),
                          ],
                        ),
                ),
                child: Column(
                  crossAxisAlignment:
                      isMe! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: [
                    Text(
                      message!,
                      textAlign: isMe! ? TextAlign.end : TextAlign.start,
                      style:
                          TextStyle(color: isMe! ? Colors.white : Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
