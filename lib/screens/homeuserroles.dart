import 'package:expensemanager/controllers/add_controller.dart';
import 'package:expensemanager/controllers/controller.dart';
import 'package:expensemanager/screens/addasset.dart';
import 'package:expensemanager/screens/dashboard.dart';
import 'package:expensemanager/screens/home2.dart';
import 'package:expensemanager/screens/income.dart';
import 'package:expensemanager/screens/income2.dart';
import 'package:expensemanager/widegts/reusablebutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserRoles extends GetView<AdddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Text(
                      // "userrole".tr,
                      "What Kind of User Are You?",
                      style: TextStyle(
                        color: Color(0xff1ECB82),
                        fontSize: 27.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  // MaterialButton(
                  //   color: Colors.blue,
                  //   onPressed: () {
                  //     Get.updateLocale(
                  //       Locale('he', 'IL'),
                  //     );
                  //   },
                  //   child: Text(
                  //     "Translate to Hebrew",
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // MaterialButton(
                  //   color: Colors.blue,
                  //   onPressed: () {
                  //     Get.updateLocale(
                  //       Locale('en', 'US'),
                  //     );
                  //   },
                  //   child: Text(
                  //     "Translate to English",
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 20.0,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.greenAccent,
                        child: ClipOval(
                          child:
                              Image(image: AssetImage("assets/images/2.png")),
                        ),
                        radius: 80,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.greenAccent,
                        child: ClipOval(
                          child:
                              Image(image: AssetImage("assets/images/1.png")),
                        ),
                        radius: 80,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.greenAccent,
                        child: ClipOval(
                          child:
                              Image(image: AssetImage("assets/images/3.png")),
                        ),
                        radius: 80,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.greenAccent,
                        child: ClipOval(
                          child:
                              Image(image: AssetImage("assets/images/4.png")),
                        ),
                        radius: 80,
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(6.0),
                    child: TextFormField(
                      // controller: controller.amountController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xffe4ecf6),
                        hintText: "Default Currency",
                        // label: Text("PKR 25,000"),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff1ECB82),
                            width: 2.0,
                          ),
                        ),
                        suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage("assets/images/pakistan.png")),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  // Container(
                  //   padding: EdgeInsets.all(6.0),
                  //   width: double.infinity,
                  //   height: 60.0,
                  //   child: RaisedButton(
                  //     child: Text(
                  //       'Continue',
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //     onPressed: () {
                  //       Get.to(Home2());
                  //     },
                  //     color: Color(0xff1ECB82),
                  //   ),
                  // ),
                  ReusablePrimaryButton(buttonText: 'Continue', onTap: () { Get.off(LandingPage()); },)

                ],
              ),
            )));
  }
}
