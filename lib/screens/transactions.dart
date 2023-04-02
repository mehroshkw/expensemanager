import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/dateController.dart';
import '../controllers/radio_controller.dart';
import '../widegts/export_radio.dart';
import '../widegts/reusablebutton.dart';


class Transactions  extends GetView<DateController> {
  get dateCtl => null;



  @override
  Widget build(BuildContext context) {
    Get.put(ButtonController());
    DateTime _date = DateTime.now();
    Get.put(DateController());
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(title: const Text('Transactions'),
        centerTitle: true,
        backgroundColor: const Color(0xff1ECB82),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_downward,
              color: Colors.white,
            ),
            onPressed: () {
              Get.defaultDialog(
                titlePadding: EdgeInsets.symmetric(vertical: 8.0),
                  title: "Export Transaction",
                  contentPadding: EdgeInsets.all(18.0),
                barrierDismissible: true,
               content: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Export Transations as:",) ,
                   OrderTypeButton(value: "pdf", title: "PDF",),
                   OrderTypeButton(value: "excel", title: "Excel",),
                   SizedBox(height: 24.0,),
                   Container(
                     width: double.infinity,
                     height: 40.0,
                     child: ElevatedButton(
                       child:  Text('Export',
                         style: TextStyle(
                           color: Colors.white,
                         ),),
                       onPressed: (){
                       },
                       style: ElevatedButton.styleFrom(
                           primary: const Color(0xff1ECB82),
                           // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          ),
                     ),
                   ),
                 ],
               )
              );
            },
          ),
          IconButton(   
            icon: Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
            onPressed: () {
              Get.defaultDialog(
                  titlePadding: EdgeInsets.symmetric(vertical: 8.0),
                  title: "Cash",
                  contentPadding: EdgeInsets.all(16.0),
                  barrierDismissible: true,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OrderTypeButton(value: "income", title: "Income",),
                      OrderTypeButton(value: "saving", title: "Saving",),
                      const SizedBox(width: 5),
                      Text("Date & Time",) ,
                      SizedBox(height: 8.0,),
                      TextFormField(
                        // controller: controller.descriptionController,
                        readOnly: true,
                        controller: dateCtl,
                        decoration:  InputDecoration(
                          hintText: "Date",
                          suffixIcon: Icon(Icons.date_range, color:  Color(0xff1ECB82),),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 2.0,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff1ECB82), width: 2.0,),
                          ),
                        ),
                        onTap: () async {
                          await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2015),
                            lastDate: DateTime(2025),
                          ).then((selectedDate) {
                            if (selectedDate != null) {
                              dateCtl.text = DateFormat('yyyy-MM-dd')
                                  .format(selectedDate);
                            }
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter date.';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 8.0,),
                      Text("Date & Time",) ,
                      SizedBox(height: 4.0,),
                      TextFormField(
                        // controller: controller.descriptionController,
                        decoration: const InputDecoration(
                          hintText: "Transport",
                          suffixIcon: Icon(Icons.arrow_drop_down),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 2.0,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff1ECB82), width: 2.0,),
                          ),
                        ),),
                      SizedBox(height: 16.0,),
                      // Radio(value: value, groupValue: groupValue, onChanged: onChanged)
                      ReusablePrimaryButton(buttonText: 'Apply', onTap: () {  },),

                    ],
                  )
              );
            },
          ),

        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10.0,),
          Expanded(
            child: ListView.builder(
              itemCount: 12,
              itemBuilder: (context, position) {
                return Row(
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
                      width:width * 0.8,
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
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:const [
                               Text("Transport",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text("PKR- 20,000",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.redAccent
                                ),),
                            ],
                          ),
                          SizedBox(height: 5.0,),
                          Row(children: const [
                            Expanded(child: Text("Cash")),
                            Text("Oct 12, 2020")
                          ],),
                        ],
                      )
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


