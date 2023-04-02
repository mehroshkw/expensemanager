import 'package:expensemanager/screens/add.dart';
import 'package:expensemanager/screens/transactions.dart';
import 'package:expensemanager/widegts/reusablebutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:date_time_picker/date_time_picker.dart';

class AddExpense extends StatelessWidget {
  const AddExpense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Expense'),
        centerTitle: true,
        backgroundColor: const Color(0xff1ECB82,),
      ),
      body: Container(
          padding: const EdgeInsets.all(10.0),
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
                        blurRadius: 4.0,
                        offset: Offset(0, 4)
                    ),],),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.0),
                      Text("Enter Your Expense", style: TextStyle(
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
                      const Text("Category",
                        style: TextStyle(
                            fontWeight: FontWeight.w600
                        ),),
                      TextFormField(
                        // controller: controller.titleController,
                        decoration: const InputDecoration(hintText: 'Transport',
                          suffixIcon: Icon(Icons.arrow_drop_down),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 2.0,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff1ECB82), width: 2.0,),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0,),
                      const Text("Date & Time", style: TextStyle(
                          fontWeight: FontWeight.w600
                      ),),
                      TextFormField(

                        // controller: controller.descriptionController,
                        decoration: const InputDecoration(
                          hintText: "Date , Time",
                          suffixIcon: Icon(Icons.calendar_month,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 2.0,),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff1ECB82), width: 2.0,),
                          ),
                        ),),
                      const SizedBox(height: 10.0,),
                      const Text("Cash", style:  TextStyle(
                          fontWeight: FontWeight.w600
                      ),),
                      TextFormField(
                        // controller: controller.descriptionController,
                        decoration: const InputDecoration(
                          hintText: "Income",
                          suffixIcon: Icon(Icons.arrow_drop_down),
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
                      //     child: const Text('Continue',
                      //       style: TextStyle(
                      //         color: Colors.white,
                      //       ),),
                      //     onPressed: (){
                      //       Get.to(Transactions());
                      //     },
                      //     color: Color(0xff1ECB82),
                      //   ),
                      // ),
                      ReusablePrimaryButton(buttonText: 'Continue', onTap: () { Get.to(Transactions()); },),

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
