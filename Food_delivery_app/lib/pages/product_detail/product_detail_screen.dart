import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app/common/color_resources.dart';
import 'package:food_app/common/images_path.dart';
import 'package:food_app/pages/cart_screen/cart_page.dart';

class ProductDetailScreen extends StatefulWidget {

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> with SingleTickerProviderStateMixin{
  TabController? _tabController;
  int quant = 1;
  //TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Yummy Noodles'),
        centerTitle: true,
        backgroundColor: ColorRes.kGreenColor,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
              },
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Icon(Icons.shopping_cart_rounded,color: Colors.white,size: 27,),
                  Container(
                    height: 14, width: 14,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orangeAccent
                    ),
                    child: Center(
                      child: Text("2",style: TextStyle(color: Colors.white, fontSize: 9),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // appBar(),
            image(),
            productDescription(),
            tabView(),
            dishListView(),
          ],
        ),
      ),
    );
  }

  appBar(){
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
              child: Icon(Icons.arrow_back, color: Colors.white)),

          Container(
            child: Text("Yummy noodles", style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
            },
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Icon(Icons.lock, color: Colors.white),
                Container(
                  height: 15, width: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orangeAccent,
                  ),
                  child: Center(
                    child: Text("2",style: TextStyle(color: Colors.white, fontSize: 12),),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  image(){
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          //height: 200,
          //width: MediaQuery.of(context).size.width,
          child: Image.asset(ImagePath.food_img,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height/3.5,
            width: MediaQuery.of(context).size.width,),
        ),

        Container(
          margin: EdgeInsets.only(right: 10, top: 10),
          child: Icon(
            Icons.favorite_outline_rounded,
            color: Colors.red,
            size: 25,
          ),
        ),

      ],

    );
  }

  productDescription(){
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text("Yummy Noodles",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
              ),
              Container(
                child: Text("\$250",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
              )
            ],
          ),

          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: RatingBar.builder(
                  initialRating: 4.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 22,
                  unratedColor: Colors.grey,
                  glow: false,
                  itemBuilder: (context, _) => Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),

              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    height: 30,
                    //width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade200
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            if (quant > 1) {
                              quant -= 1;
                              setState(() {});
                            }
                          },
                          child: Container(
                            height: 15, width: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orangeAccent
                            ),
                            child: Center(
                                child: Text("-", style: TextStyle(color: Colors.white),)),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          child: Text("$quant"),
                        ),
                        SizedBox(width: 5,),
                        GestureDetector(
                          onTap: (){
                            quant += 1;
                            setState(() {});
                          },
                          child: Container(
                            height: 15, width: 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orangeAccent
                            ),
                            child: Center(
                                child: Text("+", style: TextStyle(color: Colors.white),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 30,width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorRes.kGreenColor
                    ),
                    child: Center(
                      child: Text("Add to Bag", style: TextStyle(color: Colors.white),),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  tabView(){
    return Container(
      child: Column(
        children: [
          Container(
            //alignment: Alignment.topLeft,
            //height: MediaQuery.of(context).size.height / 15,
            margin: EdgeInsets.only(top: 25, left: 10, right: 10),
            width: MediaQuery.of(context).size.width/2,
            child: DefaultTabController(
              initialIndex: 1,
              length: 2,
              child: TabBar(
                indicatorColor: Colors.white,
                //indicatorWeight: 5.0,
                labelColor: Colors.white,
                labelPadding: EdgeInsets.only(top: 10.0, bottom: 10),
                unselectedLabelColor: Colors.black,
                controller: _tabController,
                tabs: [
                  Container(
                    height: 30,
                    //alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade300,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4.0,
                              color: Colors.grey.shade100
                          )
                        ]
                    ),
                    child: Tab(
                      text: "Description",
                    ),
                  ),
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width/4.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade300,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4.0,
                              color: Colors.grey.shade100
                          )
                        ]
                    ),
                    child: Tab(
                      text: "Review",
                    ),
                  ),

                ],
              ),
            ),
          ),

          SizedBox(height: 5,),

          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 10, right: 10),

            child: DefaultTabController(
              initialIndex: 1,
              length: 2,
              child: Container(
                height: MediaQuery.of(context).size.height /5,
                child: TabBarView(
                  physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  dragStartBehavior: DragStartBehavior.start,
                  controller: _tabController,
                  children: [
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),

                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")


                    // CreditCard(),
                    // CreditCard(),
                    // CreditCard(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  dishListView(){
    return Container(
      height: 230,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, int) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(5),
              //height: 220,
              width: MediaQuery.of(context).size.width/2.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                //border: Border.all(color: Colors.grey.shade100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 4,

                  )
                ]
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CircleAvatar(
                          radius: 65,
                          backgroundImage:
                          AssetImage('assets/images/slider1.jpg'),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Vagee Sandwich',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '\$250',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: RatingBar.builder(
                                initialRating: 4.5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 17,
                                unratedColor: Colors.grey,
                                glow: false,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                            Container(
                              child: Icon(
                                Icons.shopping_cart_rounded,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: -10,
                    right: -10,
                    child: Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_outline_rounded,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

}
