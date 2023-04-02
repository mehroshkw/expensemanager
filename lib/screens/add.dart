import 'package:expensemanager/controllers/add_controller.dart';
import 'package:expensemanager/controllers/controller.dart';
import 'package:expensemanager/screens/income.dart';
import 'package:expensemanager/screens/transactions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widegts/reusablebutton.dart';


class Add extends GetView<AdddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Income'),
        centerTitle: true,
        backgroundColor: const Color(0xff1ECB82),
      ),
      body: Container(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30.0,),
                const Image(image: AssetImage("assets/images/rupee1.png")),
                const SizedBox(height: 50.0,),
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Account Title"),
                      TextFormField(
                        // controller: controller.bankController,
                        decoration: const InputDecoration(
                          hintText: 'Meezan',
                          // label: Text("Meezan"),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 2.0,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff1ECB82), width: 2.0,),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0,),
                      const Text("Account Amount"),
                      TextFormField(
                        // controller: controller.amountController,
                        decoration: const InputDecoration(
                          hintText: "PKR 25,000",
                          // label: Text("PKR 25,000"),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 2.0,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff1ECB82), width: 2.0,),
                          ),
                        ),),
                      const SizedBox(height: 30.0,),
                      // Container(
                      //   width: double.infinity,
                      //   height: 50.0,
                      //   child: RaisedButton(
                      //     child:  Text('Add Bank',
                      //       style: TextStyle(
                      //         color: Colors.white,
                      //       ),),
                      //     onPressed: (){
                      //       Get.to(Income());
                      //     },
                      //     color: Color(0xff1ECB82),
                      //   ),
                      // ),
                      ReusablePrimaryButton(buttonText: 'Add Bank', onTap: () { Get.to(Income()); },),

                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}