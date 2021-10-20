import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';

class SelectCityPage extends StatefulWidget {
  const SelectCityPage({Key? key}) : super(key: key);

  @override
  _SelectCityPageState createState() => _SelectCityPageState();
}

enum CityList {Surat, Navsari, Vadodara, Ahemdabad, Valsad}

class _SelectCityPageState extends State<SelectCityPage> {

  CityList city = CityList.Surat;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Select City'),
        centerTitle: true,
        backgroundColor: ColorRes.kGreenColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // appBar(),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: Container(
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: ColorRes.kGreenColor,
                        hintText: "Search Your City",
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
              ),
            ),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, bottom: 10),
                    child: Text('Please Select Your City', style: TextStyle(fontWeight: FontWeight.bold),textScaleFactor: 1.3,),
                  ),
                  Container(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Surat'),
                          leading: Radio(
                            value: CityList.Surat,
                            groupValue: city,
                            onChanged: (CityList? value){
                              setState(() {
                                city = value!;
                                print(city);
                              });
                            },
                            activeColor: ColorRes.kGreenColor,
                          ),
                        ),
                        SizedBox(height: 1,child: Divider(thickness: 1,indent: 10, endIndent: 10,)),
                        ListTile(
                          title: Text('Navsari'),
                          leading: Radio(
                            value: CityList.Navsari,
                            groupValue: city,
                            onChanged: (CityList? value){
                              setState(() {
                                city = value!;
                                print(city);
                              });
                            },
                            activeColor: ColorRes.kGreenColor,
                          ),
                        ),
                        SizedBox(height: 1,child: Divider(thickness: 1,indent: 10, endIndent: 10,)),
                        ListTile(
                          title: Text('Vadodara'),
                          leading: Radio(
                            value: CityList.Vadodara,
                            groupValue: city,
                            onChanged: (CityList? value){
                              setState(() {
                                city = value!;
                                print(city);
                              });
                            },
                            activeColor: ColorRes.kGreenColor,
                          ),
                        ),
                        SizedBox(height: 1,child: Divider(thickness: 1,indent: 10, endIndent: 10,)),
                        ListTile(
                          title: Text('Ahemdabad'),
                          leading: Radio(
                            value: CityList.Ahemdabad,
                            groupValue: city,
                            onChanged: (CityList? value){
                              setState(() {
                                city = value!;
                                print(city);
                              });
                            },
                            activeColor: ColorRes.kGreenColor,
                          ),
                        ),
                        SizedBox(height: 1,child: Divider(thickness: 1,indent: 10, endIndent: 10,)),
                        ListTile(
                          title: Text('Valsad'),
                          leading: Radio(
                            value: CityList.Valsad,
                            groupValue: city,
                            onChanged: (CityList? value){
                              setState(() {
                                city = value!;
                                print(city);
                              });
                            },
                            activeColor: ColorRes.kGreenColor,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    child: GestureDetector(
                      onTap: () {
                        print('Button Pressed : $city');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Container(
                          width: deviceWidth,
                          decoration: BoxDecoration(
                              color: ColorRes.kGreenColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 9),
                                child: Text(
                                  'Update',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
            child: Text("Select City", style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),),
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
}
