import 'package:expensemanager/controllers/dateController.dart';
import 'package:expensemanager/screens/add_liability2.dart';
import 'package:expensemanager/widegts/reusablebutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AddLiabilityScreen extends StatelessWidget {
  const AddLiabilityScreen({Key? key}) : super(key: key);
  // get dateCtl => null;
  @override
  Widget build(BuildContext context) {
var dateCtl;
    DateTime _date = DateTime.now();
    Get.put(DateController());
    var toTake = true;
    return Scaffold(
    backgroundColor: const Color(0xfff8feff),
    appBar: AppBar(
    title: const Text('Add Liability'),
    centerTitle: true,
    backgroundColor: const Color(0xff1ECB82),
    leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {}),
    ),
      body: Container(
    padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                StatefulBuilder(builder: (context, myState) {
                  return Container(
                    height: 50,
                    child: Expanded(
                      child: Row(
                    children: [
                        Expanded(
                          child: GestureDetector(
                        onTap: () {
                          myState(() {
                              toTake = false;
                            });
                          },
                              child: Container(
                                  decoration: BoxDecoration(
                                  color: toTake
                                  ? const Color(0xff1ECB82)
                                      : const Color(0xffd4f8de),
                                  borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(25.0),
                                  topLeft: Radius.circular(25.0))),
                                  child: Center(
                                  child: TextButton(
                                  onPressed: () {
                                  // Get.to(AddLiability());
                                  },
                                      child: const Text("To Take",
                                      style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      ),
                                      ),
                                      ),
                                            ),
                                            ),
                                            ),
                                            ),
                                            Expanded(
                                            child: GestureDetector(
                                            onTap: () {
                                            myState(() {
                                            toTake = false;
                                            });
                                            },
                                              child: Container(
                                              decoration: BoxDecoration(
                                              color: !toTake ? Colors.red :
                                              const Color(0xfff6cacf),
                                              borderRadius: const BorderRadius.only(
                                              bottomRight: Radius.circular(25.0),
                                              topRight: Radius.circular(25.0))),
                                                child:  Center(
                                                  child: TextButton(child: Text("To Given",
                                              style: TextStyle(
                                              color: Colors.black, fontWeight: FontWeight.w600,
                                              ),
                                                  ),
                                                  onPressed: (){Get.to(AddLiability2Screen());},)
                                                ),
                                              ),
                                          ),
                                            ),

                    ],
                      ),
                    ),
                  );
                }),
                        Container(
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        boxShadow: const [
                        BoxShadow(
                        color: Color(0xffe8f6f7),
                        blurRadius: 3.0,
                        offset: Offset(4, 4)),
                        ],
                        ),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  const SizedBox(height: 10.0),
                  const Text(
                  "Enter Amount",
                  style: TextStyle(
                  color: Color(0xff4a4a4a),
                  fontSize: 18,
                  ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                  children: [
                  const Text(
                  "PKR",
                  style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1ECB82)),
                  ),
                  const Expanded(
                  child: Text(" 13,000",
                  style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w500,
                  ))),
                  SizedBox(
                  height: 35.0,
                  width: 40.0,
                  child: IconButton(
                  padding: const EdgeInsets.all(2.0),
                  color: Colors.black87,
                  icon: const Icon(Icons.calculate_outlined,
                  size: 40.0),
                  onPressed: () {},
                  )),
                  ],
                  ),
                  const SizedBox(height: 10),
                  ],
                  ),
                  ),
                  Form(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const SizedBox(
                  height: 20.0,
                  ),
                  const Text(
                  "Title",
                  style: TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                  TextFormField(
                  decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                  color: Color(0xff1ECB82),
                  width: 2.0,
                  ),
                  ),
                  hintText: 'Bike remaining',
                  border: OutlineInputBorder(
                  borderSide: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                  ),
                  ),
                  ),
                  ),
                  const SizedBox(
                  height: 10.0,
                  ),
                  const Text(
                  "Description",
                  style: TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                  TextFormField(
                  decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                  color: Color(0xff1ECB82),
                  width: 2.0,
                  ),
                  ),
                  hintText:
                  "He'll want to use your yacht, and i don't want....",
                  border: OutlineInputBorder(
                  borderSide: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                  ),
                  ),
                  ),
                  ),
                  const SizedBox(
                  height: 10.0,
                  ),
                  const Text(
                  "Date",
                  style: TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                  // TextFormField(
                  // decoration: const InputDecoration(
                  // focusedBorder: OutlineInputBorder(
                  // borderSide: BorderSide(
                  // color: Color(0xff1ECB82),
                  // width: 2.0,
                  // ),
                  // ),
                  // hintText: "December 12, 2020",
                  // suffixIcon: Icon(
                  // Icons.date_range_outlined,
                  // color: Colors.black54,
                  // ),
                  // border: OutlineInputBorder(
                  // borderSide: BorderSide(
                  // color: Colors.black,
                  // width: 2.0,
                  // ),
                  // ),
                  // ),
                  // ),
                    TextFormField(
                      // controller: controller.descriptionController,
                      readOnly: true,
                      controller: dateCtl,
                      decoration:  InputDecoration(
                        hintText: "12 December 2020",
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
                  const SizedBox(
                  height: 100.0,
                  ),
                    Container(
                        width: double.infinity,
                        height: 50.0,
                        child: ReusablePrimaryButton(buttonText: 'Continue', onTap: () { Get.to(AddLiability2Screen()); },)
                    ),
                  ],
    ),
    ),
    ],
    ),
    )),
    );
    }
    }
