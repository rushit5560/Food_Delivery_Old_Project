import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';
//import 'package:food_app/constants.dart';

class OrderHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order History'),
        centerTitle: true,
        backgroundColor: ColorRes.kGreenColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // appBar(context),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, int) {
                  return orderHistoryItem(context);
                },
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.white),
          ),

          Container(
            child: Text("Order History", style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),),
          ),
          Container(),
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

  Widget orderHistoryItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: 100,
          child: Center(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Order Id:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Placed On:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '#123456',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '09 July 2021',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              '\$550 / 2 Items',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      orderHistoryDialog(context);
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orangeAccent,
                      ),
                      child: Icon(
                        Icons.remove_red_eye_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  orderHistoryDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child: Text(
                        'x',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        child: Text(
                          'Pick Up Address:',
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text('7000, WhiteField, Manchester Highway, London. 401203',
                          style: TextStyle(
                            fontSize: 13
                          ),
                          maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        child: Text(
                          'Drop Off Address:',
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text('7000, WhiteField, Manchester Highway, London. 401203',
                          style: TextStyle(
                              fontSize: 13
                          ),
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        child: Text(
                          'Item Details:',
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('1 x Cheezee Burger',
                              maxLines: 1,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 15
                            ),),
                            Text('2 x Yummy Noodles',
                              maxLines: 1,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 15
                              ),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
