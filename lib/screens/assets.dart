import 'package:expensemanager/controllers/assetsController.dart';
import 'package:expensemanager/screens/addasset.dart';
import 'package:expensemanager/screens/dashboard.dart';
import 'package:expensemanager/screens/home.dart';
import 'package:expensemanager/widegts/reusablebutton.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../controllers/controller.dart';

class Assets extends StatelessWidget {
  final assetsController = Get.put(AssetsController());

  Assets({Key? key}) : super(key: key);
  List<String> buttons = [
    "Edit",
    "Delete",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Assets'),
        backgroundColor: Color(0xff1ecb82),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Get.to(LandingPage());
            }),
      ),
      body: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(children: [
            Expanded(child: GetX<AssetsController>(builder: (controller) {
              return ListView.builder(
                  itemCount: controller.assets.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 120,
                      child: Card(
                        shadowColor: Colors.black38,
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(
                                image: AssetImage(controller.assets[index].image),
                                height: 120,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal:10.0),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      controller.assets[index].title,
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16.0,
                                                          fontWeight: FontWeight.w800),
                                                    ),
                                                    Text(
                                                      controller.assets[index].description,
                                                      style: TextStyle(
                                                        color: Colors.black38,
                                                        fontSize: 16.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30.0,
                                              width: 20.0,
                                              child: PopupMenuButton(
                                                constraints: const BoxConstraints(minWidth: 0.0,minHeight: 0.0),
                                                iconSize: 20.0,
                                                elevation: 0.0,
                                                padding: const EdgeInsets.all(0.0),
                                                // child: Icon(Icons.popup),
                                                  itemBuilder: (context) => [
                                                    PopupMenuItem(
                                                      value: 1,
                                                      child: Row(
                                                        children:  [
                                                          Container(
                                                              width:40,
                                                              child: Text("Edit")),
                                                          SizedBox(
                                                            width: 11,
                                                          ),
                                                          Icon(Icons.edit),
                                                        ],
                                                      ),
                                                    ),
                                                    PopupMenuItem(
                                                      value: 2,
                                                      child: Row(
                                                        children:  [
                                                          Container(
                                                              width:40,
                                                              child: Text("Delete")),
                                                          SizedBox(
                                                            width: 8,
                                                          ),
                                                          Icon(Icons.delete_forever),
                                                        ],
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        '\$ ${controller.assets[index].price}',
                                        textAlign: TextAlign.end,
                                        style: const TextStyle(
                                            color: Colors.red,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            })),
            // Container(
            //   margin: const EdgeInsets.all(8.0),
            //   padding: const EdgeInsets.all(3.0),
            //   width: double.infinity,
            //   height: 50.0,
            //   child: RaisedButton(
            //     onPressed: () {
            //       Get.to(AddAsset());
            //     },
            //     color: const Color(0xff1ECB82),
            //     child: const Text(
            //       'Add More',
            //       style: TextStyle(
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
            // ),
            ReusablePrimaryButton(buttonText: 'Add More', onTap: () { Get.to(AddAsset()); },),

            SizedBox(height: 15.0),
          ])),
    );
  }
}
