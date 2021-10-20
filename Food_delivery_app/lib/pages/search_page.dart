import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';
import 'package:food_app/common/custom_drawer.dart';
import 'package:food_app/common/images_path.dart';

class SearchPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var kDeviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(

      /*appBar: AppBar(
        title: Text('Search'),
        centerTitle: true,
        backgroundColor: ColorRes.kGreenColor,
      ),*/

      appBar: AppBar(
        backgroundColor: ColorRes.kGreenColor,
        title: Image(
          image: AssetImage(ImagePath.logo),
          width: kDeviceWidth * 0.25,
        ),
      ),
      endDrawer: CstDrawer(),

      body: Column(
        children: [
          // appBar(),
          SizedBox(height: 10),
          searchBar(),
        ],
      ),
    );
  }

  Widget appBar(){
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
            child: Text("Search", style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),),
          ),

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

  Widget searchBar() {
    return Container(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: TextFormField(
          cursorColor: ColorRes.kGreenColor,
          onChanged: (value) {
            String searchValue = value;
            print('Changed value : $searchValue');
          },
          decoration: InputDecoration(
            fillColor: ColorRes.kGreenColor,
            hintText: "Search Here",
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
    );
  }
}
