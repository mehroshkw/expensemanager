
import 'package:expensemanager/controllers/add_liability.dart';
import 'package:expensemanager/unused/tabview1.dart';
import 'package:expensemanager/unused/tabview2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../widegts/reusablebutton.dart';
import '../screens/add_expense.dart';

class MyTabScreen extends GetView<AddLiability> {
   const MyTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var toTake = false;
     AddLiability _tabs = Get.put(AddLiability());
    return DefaultTabController(
      length: 2 ,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add Liability"),
          centerTitle: true,
          backgroundColor: const Color(0xff1ECB82),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {}
          ),

        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Column(
              children: [
                Container(
                  // color: Color(0xffa2fcd3),
                  decoration: BoxDecoration(
                    color: Color(0xffa2fcd3),
                      borderRadius: BorderRadius.circular(20.0)
                      ),
                  child: TabBar(
                    controller: _tabs.controller,
                    // tabs:_tabs.myTabs,
                      indicator: const BoxDecoration(
                        color: Color(0xff1ECB82),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0)
                          )
                        ),
                    tabs: _tabs.myTabs,
                    // [
                      // Tab(text: "To Take"),
                      // Tab(text: "To Given")
                    // ]
                  ),
                ),
                SizedBox(height: 450,
                child: TabBarView(
                  controller: _tabs.controller,
                  children: [
                    Tab1(),
                    Tab2(),
                  ],

                ),),
                // Container(
                //   width: double.infinity,
                //   height: 50.0,
                //   child: RaisedButton(
                //     child: const Text('Continue',
                //       style: TextStyle(
                //         color: Colors.white,
                //       ),),
                //     onPressed: (){
                //       Get.to(AddExpense());
                //     },
                //     color: Color(0xff1ECB82),
                //   ),
                // ),
                ReusablePrimaryButton(buttonText: 'Continue', onTap: () { Get.to(AddExpense()); },)
              ],
            ),
          ),
        )

      ),
    );
  }
}