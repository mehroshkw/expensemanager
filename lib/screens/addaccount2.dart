import 'package:expensemanager/controllers/add_controller.dart';
import 'package:expensemanager/controllers/controller.dart';
import 'package:expensemanager/screens/income.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AddAccount2 extends GetView<AdddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Banks'),
        centerTitle: true,
        backgroundColor: const Color(0xff1ECB82),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              // controller: controller.bankController,
              decoration: const InputDecoration(
                hintText: 'Search',
                // prefixText: "Search",
                // icon: Icon(Icons.search),
                prefixIcon: Icon(Icons.search, color: Color(0xff037F8B),),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(color:Color(0xff1ECB82), width: 2.0,),),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff1ECB82), width: 2.0,)
              ),
              ),
            ),
          ),
          // SizedBox(height: 10.0,),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, position) {
                return Card(
                  color: Color(0xfffaf6f6),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child:  Row(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.greenAccent,
                          child: ClipOval(
                            child: Image(image: AssetImage("assets/images/hbl.png")),
                          ),
                          radius: 20,
                        ),
                        Expanded(
                          child: Text(
                            "Habib Bank Limited",
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                        // SizedBox(width: 100,),
                        Icon(Icons.arrow_forward_ios, color: Color(0xff1ECB82),),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}