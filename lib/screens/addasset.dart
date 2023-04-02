import 'package:expensemanager/controllers/controller.dart';
import 'package:expensemanager/screens/add.dart';
import 'package:expensemanager/widegts/reusablebutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AddAsset extends GetView<AddAssetController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Asset'),
      centerTitle: true,
      backgroundColor: const Color(0xff1ECB82),
       ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.0,),
              Image(image: AssetImage("assets/images/wealth1.png")),
              SizedBox(height: 50.0,),
              Form(
                // key: controller.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      // controller: controller.titleController,
                      decoration: const InputDecoration(hintText: 'Title...',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2.0,),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff1ECB82), width: 2.0,),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    TextFormField(
                      // controller: controller.descriptionController,
                      decoration: const InputDecoration(
                        hintText: "Description...",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2.0,),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff1ECB82), width: 2.0,),
                        ),
                      ),),
                    SizedBox(height: 30.0,),
                    // Container(
                    //   width: double.infinity,
                    //   height: 50.0,
                    //   child: RaisedButton(
                    //     child:  Text('Continue',
                    //       style: TextStyle(
                    //         color: Colors.white,
                    //       ),),
                    //     onPressed: (){
                    //       Get.to(Add());
                    //     },
                    //     color: Color(0xff1ECB82),
                    //   ),
                    // ),
                    ReusablePrimaryButton(buttonText: 'Continue', onTap: () { Get.to(Add()); },),

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