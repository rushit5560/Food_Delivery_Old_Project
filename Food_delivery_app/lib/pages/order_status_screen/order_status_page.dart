import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';
import 'package:food_app/common/images_path.dart';
import 'package:food_app/pages/tracking_page/tracking_page.dart';

class OrderStatusPage extends StatelessWidget {
  const OrderStatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Status'),
        centerTitle: true,
        backgroundColor: ColorRes.kGreenColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // appBar(context),
            invoiceNumber(),
            SizedBox(height: 25),
            orderProcess(context),
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
            child: Text("Order Status", style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),),
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

  Widget invoiceNumber() {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Invoice:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(width: 5),
              Text(
                '123456',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(ImagePath.cutlery),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget orderProcess(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              height: 240,
              /*child: Image(
                image: AssetImage(ImagePath.tracking),
                fit: BoxFit.fitHeight,
              ),*/
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImagePath.tracking),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order Received',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.access_time_rounded,
                              color: Colors.grey,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text(
                              '09:00 AM, 09 July 2021',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'On The Way',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.access_time_rounded,
                              color: Colors.grey,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text(
                              '09:00 AM, 09 July 2021',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => TrackingPage()));
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                child: Icon(
                                  Icons.location_on_rounded,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorRes.kGreenColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 40),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Delivered',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.access_time_rounded,
                              color: Colors.grey,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Finish Time In 5 Min',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          ],
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
    );
  }
}
