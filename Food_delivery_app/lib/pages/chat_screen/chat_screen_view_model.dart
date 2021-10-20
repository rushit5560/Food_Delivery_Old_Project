import 'package:food_app/model/message_model.dart';
import 'package:food_app/pages/chat_screen/chat_page.dart';

class ChatScreenViewModel {
  late ChatScreenState state;

  List<MessageModel> smsData= [];

  ChatScreenViewModel (ChatScreenState state) {
    this.state = state;
    addMessages();
  }

  void addMessages() {
    smsData.add(MessageModel(
       // name: "Will",
        senderId: '2',
        message: "Parent Teacher Meeting will be held on Friday, 14th May'10. All parents are requested to come and meet the Teachers of their wards and discuss about their progress",
        time: "10:05 AM",
       // date: "2020-01-20",
       // image: ImagePath.profile,
       // relation: "Staff"
    ));

    smsData.add(MessageModel(
       // name: "Wilson",
        senderId: '2',
        message: "Ok, We will reach at a time.",
        time: "10:06 AM",
       // date: "2020-01-20",
        //image: ImagePath.profile,
        //relation: "Father"
    ));

    smsData.add(MessageModel(
        //name: "Will",
        senderId: '2',
        message: "Dear parent, we wish your ward all the best for the SSLC Exam. -Indian School, Versova, Mumbai",
        time: "10:00 AM",
       // date: "2020-01-22",
       // image: ImagePath.profile,
       // relation: "Staff"
    ));

    smsData.add(MessageModel(
       // name: "Levi",
        senderId: '3',
        message: "Dear Teacher, Thank you for reminder",
        time: "10:30 AM",
       // date: "2020-01-22",
       // image: ImagePath.profile,
        //relation: "Mother"
    ));

    smsData.add(MessageModel(
       // name: "Wilson",
        senderId: '2',
        message: "Can you provide extra material to my child so he can learn more from it and get good score in exams?",
        time: "10:06 AM",
       // date: "2020-01-20",
       // image: ImagePath.profile,
       // relation: "Father"
    ));
  }
}