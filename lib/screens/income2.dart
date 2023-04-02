import 'package:expensemanager/controllers/incomeController.dart';
import 'package:expensemanager/screens/assets.dart';
import 'package:expensemanager/screens/assets2.dart';
import 'package:expensemanager/screens/home2.dart';
import 'package:expensemanager/screens/liability2.dart';
import 'package:expensemanager/screens/newIncome.dart';
import 'package:expensemanager/screens/savings2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'add_expense.dart';

class Income2 extends GetView<IncomeController> {
  const Income2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    IncomeController _tabs = Get.put(IncomeController());
    return DefaultTabController(
      length: 4 ,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xff1ECB82),
            leading: IconButton(
                icon: const Icon(Icons.home_outlined),
                onPressed: () {
                  Get.to(Home2());
                }
            ),
              actions: <Widget>[
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_downward)),
              ]

          ),

          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  // color: Color(0xffa2fcd3),
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                  ),
                  child: TabBar(
                    controller: _tabs.incomecontroller,
                    indicator:  const BoxDecoration(
                        // color: Color(0xff1ECB82),
                      border: Border(
                        bottom: BorderSide( //
                          color: Color(0xff1ECB82),
                          width: 2.0,
                        ),
                      )
                    ),
                    tabs: _tabs.myTabs,labelColor: Colors.black,

                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.all(8.0),
                //   padding: const EdgeInsets.all(10.0),
                //   alignment: Alignment.centerLeft,
                //   decoration: BoxDecoration(
                //     borderRadius:  BorderRadius.circular(10),
                //     color: Colors.white,
                //     shape: BoxShape.rectangle,
                //     boxShadow:const [ BoxShadow(
                //         color: Color(0x11000000),
                //         blurRadius: 4.0,
                //         offset: Offset(0, 4)
                //     ),],),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     children: [
                //       SizedBox(height: 10.0),
                //       Text("Your Income", style: TextStyle(
                //           fontSize: 16.0
                //       ),),
                //       SizedBox(height: 4.0),
                //       Row(
                //         children: const [
                //           Text("PKR", style: TextStyle(
                //               fontSize: 32.0,
                //               fontWeight: FontWeight.w600,
                //
                //           ),),
                //           Expanded(child: Text(" 13,000", style: TextStyle(
                //             fontSize: 32.0,
                //             color: Color(0xff1ECB82),
                //             fontWeight: FontWeight.w600,
                //           ))),
                //           Icon(Icons.add, size: 40.0,)
                //         ],
                //       ),
                //       const SizedBox(height: 10.0),
                //     ],
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: const [
                //       Text("History", style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.black,
                //       ),),
                //       Icon(Icons.filter_list)
                //     ],
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: height,
                    child: TabBarView(
                      controller: _tabs.incomecontroller,
                      children:  [
                        NewIncome(),
                        Savings2(),
                        Liability2(),
                        Assets2(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}