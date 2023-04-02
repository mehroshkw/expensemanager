import 'package:expensemanager/screens/saving.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widegts/delete_alert.dart';
class Savings2 extends StatelessWidget {
  const Savings2 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              borderRadius:  BorderRadius.circular(10),
              color: Colors.white,
              shape: BoxShape.rectangle,
              boxShadow:const [ BoxShadow(
                  color: Color(0x11000000),
                  blurRadius: 4.0,
                  offset: Offset(0, 4)
              ),],),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10.0),
                Text("Your Savings", style: TextStyle(
                    fontSize: 16.0
                ),),
                SizedBox(height: 4.0),
                Row(
                  children:  [
                    const Text("PKR", style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w600,

                    ),),
                    const Expanded(child: Text(" 13,000", style: TextStyle(
                      fontSize: 32.0,
                      color: Color(0xff1ECB82),
                      fontWeight: FontWeight.w600,
                    ))),
                    IconButton(onPressed: (){
                      Get.to(Saving());
                    }, icon: Icon(Icons.add, size: 40.0,))
                  ],
                ),
                const SizedBox(height: 10.0),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("History", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),),
                Icon(Icons.filter_list)
              ],
            ),
          ),
          // SizedBox(height: 10.0,),
          Expanded(
            child: ListView.builder(
              itemCount: 12,
              itemBuilder: (context, position) {
                return GestureDetector(
                  onLongPress: () {
                    Get.defaultDialog(
                      title: "",
                      content: getContent(),
                      radius: 10.0,
                      barrierDismissible: true,
                      confirm: confirmBtn(),
                      cancel: cancelBtn(),
                    );
                  },
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.all(10.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: -2,
                                  blurRadius: 10,
                                  offset: Offset(0,0),
                                  color: Colors.black12)
                            ],
                          ),
                          child: Image.asset('assets/images/arrow.png')
                      ),
                      Container(
                          width:width * 0.75,
                          height:height * 0.07,
                          margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
                          padding: EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Transport",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 5.0,),
                              Row(children: const [
                                Expanded(child: Text("This is a Simple Dummy Text")),
                                Text("Oct 12, 2020"),
                              ],),
                            ],
                          )
                      )
                    ],
                  ),
                );

              },
            ),
          ),
        ],
      ),
    );
  }
}
