import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/add_expense.dart';

class Tab2 extends StatelessWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(3.0),
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius:  BorderRadius.circular(10),
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    boxShadow:const [ BoxShadow(
                        color: Color(0x11000000),
                        blurRadius: 2.0,
                        offset: Offset(4, 4)
                    ),],),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.0),
                      Text("Enter Amount", style: TextStyle(
                          fontSize: 16.0
                      ),),
                      SizedBox(height: 20.0),
                      Row(
                        children: const [
                          Text("PKR", style: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1ECB82)
                          ),),
                          Expanded(child: Text(" 13,000", style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.w600,
                          ))),
                          Icon(Icons.calculate_outlined)
                        ],
                      ),
                      const SizedBox(height: 10.0),
                    ],
                  ),
                ),
                Form(
                  // key: controller.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.0,),
                      const Text("Title",
                        style: TextStyle(
                            fontWeight: FontWeight.w600
                        ),),
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
                      const SizedBox(height: 10.0,),
                      const Text("Description", style: TextStyle(
                          fontWeight: FontWeight.w600
                      ),),
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
                      const SizedBox(height: 10.0,),
                      const Text("Date", style:  TextStyle(
                          fontWeight: FontWeight.w600
                      ),),
                      TextFormField(
                        // controller: controller.descriptionController,
                        decoration: const InputDecoration(
                          hintText: "Date",
                          suffixIcon: Icon(Icons.date_range),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 2.0,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff1ECB82), width: 2.0,),
                          ),
                        ),),
                      const SizedBox(height: 40.0,),
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
