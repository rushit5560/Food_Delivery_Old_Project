import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';
import 'package:food_app/common/custom_drawer.dart';
import 'package:food_app/common/images_path.dart';
import 'package:food_app/pages/veg_dishes_screen/veg_dishes_page.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this is for Slider Images
  int current = 0;
  List imgList = [
    ImagePath.slider1,
    ImagePath.slider2,
    ImagePath.slider3,
  ];

  // Options List
  List optionList = [
    ImagePath.main_f1,
    ImagePath.main_f2,
    ImagePath.main_f3,
    ImagePath.main_f4,
  ];
  List optionText = [
    'Veg Dishes',
    'NonVeg Dishes',
    'Offers',
    'New Arrival',
  ];

  // This is for the Dot Indicator
  /*List<T> map<T>(List list, Function handler){
    List<T> result = [];
  }*/

  @override
  Widget build(BuildContext context) {
    // var kDeviceHeight = MediaQuery.of(context).size.height;
    var kDeviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorRes.kGreenColor,
        title: Image(
          image: AssetImage(ImagePath.logo),
          width: kDeviceWidth * 0.25,
        ),
      ),
      endDrawer: CstDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: kDeviceWidth,
              color: Colors.grey,
              child: Swiper(
                autoplayDisableOnInteraction: true,
                autoplay: true,
                duration: 6000,
                loop: false,
                physics: BouncingScrollPhysics(),
                itemCount: imgList.length,
                itemBuilder: (context, index) {
                  return Container(
                    // padding: EdgeInsets.only(left: 10, right: 10),
                    //child: Image.network(model.bannerListData.data[index].image)
                    child: Image(
                      image: AssetImage(imgList[index]),
                      fit: BoxFit.cover,
                    ),
                  );
                },
                pagination: SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                      activeColor: ColorRes.kGreenColor,
                      color: Colors.white54,
                      activeSize: 12,
                      size: 6),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: TextFormField(
                  cursorColor: ColorRes.kGreenColor,
                  decoration: InputDecoration(
                    fillColor: ColorRes.kGreenColor,
                    hintText: "Search For Dishes",
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ColorRes.kGreenColor,
                          width: 2,
                          style: BorderStyle.solid),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorRes.kGreenColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorRes.kGreenColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorRes.kGreenColor,
                      ),
                      child: Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: optionList.length,
                itemBuilder: (context, int) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VegDishesPage()));
                      },
                      child: Material(
                        elevation: 8,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 95,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  '${optionList[int]}',
                                  height: 60,
                                  width: 60,
                                ),
                                Text(
                                  '${optionText[int]}',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, int) {
                  return int % 2 == 0
                      ? InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VegDishesPage()));
                          },
                          child: Container(
                            height: 190,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height: 200,
                                    child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: Image.asset(
                                        ImagePath.slider1,
                                        fit: BoxFit.cover,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(80),
                                          topRight: Radius.circular(80),
                                        ),
                                      ),
                                      elevation: 20,
                                      margin: EdgeInsets.only(
                                          top: 10, bottom: 10, right: 10),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Our Best Dishes',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        SizedBox(height: 6),
                                        Container(
                                          child: RatingBar.builder(
                                            initialRating: 4.5,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 20,
                                            glow: false,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 1),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star_rounded,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                        ),
                                        SizedBox(height: 6),
                                        Container(
                                          child: Text(
                                            '\$150 - 300 Per Person',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 6),
                                        Container(
                                          child: Text(
                                            '50% Off On Your First Order',
                                            style: TextStyle(
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VegDishesPage()));
                          },
                          child: Container(
                            height: 190,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Veg-Nonveg Dishes',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        SizedBox(height: 6),
                                        Container(
                                          child: RatingBar.builder(
                                            initialRating: 4,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 20,
                                            glow: false,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 1),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star_rounded,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                        ),
                                        SizedBox(height: 6),
                                        Container(
                                          child: Text(
                                            '\400 - 500 Per Person',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 6),
                                        Container(
                                          child: Text(
                                            '20% Off On Your First Order',
                                            style: TextStyle(
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height: 200,
                                    child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: Image.asset(
                                        ImagePath.sub_dishes_2,
                                        fit: BoxFit.cover,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(80),
                                            topLeft: Radius.circular(80)),
                                      ),
                                      elevation: 20,
                                      margin: EdgeInsets.only(
                                          left: 10, top: 10, bottom: 10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
