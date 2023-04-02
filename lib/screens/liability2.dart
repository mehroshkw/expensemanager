import 'package:expensemanager/screens/add_liability.dart';
import 'package:expensemanager/unused/tab_screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widegts/reusablebutton.dart';

class Liability2 extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  // const Liability2 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SizedBox(
                  // color: Colors.greenAccent,
                  height: 160,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 1.0),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Your Liability",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Details",
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  const CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color(0xbeafeca3),
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.green,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "PKR ",
                                        style: TextStyle(
                                          color: Color(0xff1ECB82),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "20,000",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color(0xbceea0a0),
                                    child: Icon(
                                      Icons.arrow_upward,
                                      color: Colors.red,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "PKR ",
                                        style: TextStyle(
                                          color: Color(0xff1ECB82),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "10,000",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            "There are 20,000 to take and 1,300 is to be given.",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                // controller: controller.bankController,
                decoration: const InputDecoration(
                  hintText: 'Search',
                  // prefixText: "Search",
                  // icon: Icon(Icons.search),
                  prefixIcon: Icon(Icons.search, color: Color(0xff037F8B),),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color:Colors.black38, width: 2.0,),),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff1ECB82), width: 2.0,)
                  ),
                ),
              ),
            ),

          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: height * 0.44,
              width: width,
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, position) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height:height * 0.08,
                              padding: EdgeInsets.only(left: 8.0),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                              ),
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 4.0),
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                    color: Color(0xffb1e89a),                                        shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(8.0)
                                ),
                                child: const Icon(
                                  Icons.arrow_downward,
                                  color: Color(0xff1ECB82),
                                ),
                              ),
                            ),
                            Container(
                                width:width *0.75,
                                height:height * 0.1,
                                margin: EdgeInsets.only(right: 4.0),
                                padding: EdgeInsets.all(8.0),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: Colors.black, ),
                                  ),
                                  shape: BoxShape.rectangle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: -2,
                                        blurRadius: 10,
                                        offset: Offset(0,0),
                                        color: Colors.black12)
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Bike Remaining",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        Text("Dec 12, 2020",
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.grey
                                          ),),
                                      ],
                                    ),
                                    SizedBox(height: 5.0,),
                                    Row(children: const [
                                      Expanded(child: Text("He'll want to use your yacht, and I don't want this thing smelling like fish.")),

                                    ],),
                                  ],
                                )
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height:height * 0.09,
                              padding: EdgeInsets.only(left: 8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                              ),
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 4.0),
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                    color: Color(0xffef9f9f),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(8.0)
                                ),
                                child: Icon(
                                  Icons.arrow_upward,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Container(
                                width:width *0.75,
                                height:height * 0.1,
                                margin: EdgeInsets.only(right: 4.0),
                                padding: EdgeInsets.all(8.0),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: Colors.black, ),
                                  ),
                                  shape: BoxShape.rectangle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: -2,
                                        blurRadius: 10,
                                        offset: Offset(0,0),
                                        color: Colors.black12)
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Bike Remaining",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        Text("Dec 12, 2020",
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.grey
                                          ),),
                                      ],
                                    ),
                                    SizedBox(height: 5.0,),
                                    Row(children: const [
                                      Expanded(child: Text("He'll want to use your yacht, and I don't want this thing smelling like fish.")),

                                    ],),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),

          ),
          Positioned(
            bottom:50,
            child:
            Container(
              width: width,
                height: 50,
                color: Colors.transparent,
                child: ReusablePrimaryButton(buttonText: 'Add More', onTap: () {  Get.to(AddLiabilityScreen()); },))
          ),
        ],
      ),
    );
  }
}
