import 'package:expensemanager/controllers/add_controller.dart';
import 'package:expensemanager/screens/addaccount2.dart';
import 'package:expensemanager/widegts/reusablebutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Saving extends GetView<AdddController> {
  const Saving({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Savings'),
        centerTitle: true,
        backgroundColor: const Color(0xff1ECB82),
      ),
      body: Container(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30.0,),
                const Image(image: AssetImage("assets/images/wealth1.png")),
                const SizedBox(height: 50.0,),
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Enter Your Saving Amount"),
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
                      //     child:  Text('Add Savings',
                      //       style: TextStyle(
                      //         color: Colors.white,
                      //       ),),
                      //     onPressed: (){
                      //       Get.to(AddAccount2());
                      //     },
                      //     color: Color(0xff1ECB82),
                      //   ),
                      // ),
                      ReusablePrimaryButton(buttonText: 'Add Savings', onTap: () { Get.to(AddAccount2()); },)
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