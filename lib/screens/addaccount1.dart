import 'package:expensemanager/binding/choice.dart';
import 'package:expensemanager/controllers/add_controller.dart';
import 'package:expensemanager/controllers/controller.dart';
import 'package:expensemanager/screens/addaccount2.dart';
import 'package:expensemanager/screens/homeuserroles.dart';
import 'package:expensemanager/screens/income.dart';
import 'package:expensemanager/unused/tab_screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AddAccount1 extends GetView<AdddController> {
  // late final Choice choice;
  List<Choice> choices = <Choice>[
    const Choice(title: 'HBL', imagePath: Image(image: AssetImage("assets/images/hbl.png",))),
    const Choice(title: 'Allied',  imagePath: Image(image: AssetImage("assets/images/allied.png"))),
    const Choice(title: 'JS',  imagePath: Image(image: AssetImage("assets/images/js.png"))),
    const Choice(title: 'UBL', imagePath: Image(image: AssetImage("assets/images/ubl.png"))),
    const Choice(title: 'Meezan', imagePath: Image(image: AssetImage("assets/images/meezan.png"))),
    const Choice(title: 'Bank',imagePath: Image(image: AssetImage("assets/images/icon1.png"))),
    const Choice(title: 'BOP', imagePath: Image(image: AssetImage("assets/images/bop.png"))),
    // const Choice(title: 'Bank', imagePath: Image(image: AssetImage("assets/images/allied.png"))),
  ];

  List<String> images = [

    "assets/images/hbl.png",
    "assets/images/allied.png",
    "assets/images/js.png",
    "assets/images/ubl.png",
    "assets/images/meezan.png",
    "assets/images/icon1.png",
    "assets/images/bop.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Account'),
        centerTitle: true,
        backgroundColor: const Color(0xff1ECB82,),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.close),
            ),
          ],
      ),
      body: Container(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0,),
              Text("Choose Account", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),),
              SizedBox(height: 10.0,),
              Text("Bank", style: TextStyle(fontSize: 24.0),),
              GridView.builder(
                itemCount: choices.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0
                ),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index){
                  // return Image.network(images[index]);
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(2.0),
                        padding: const EdgeInsets.all(11.0),
                        alignment: Alignment.center,
                        decoration:const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow:[ BoxShadow(
                            color: Color(0x11000000),
                            blurRadius: 2.0,
                            offset: Offset(2, 2)

                          )]
                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 30.0,
                                height: 30.0,
                                child: choices[index].imagePath),

                            // SizedBox(height: 5.0,),
                            // Text(choices[index].title),

                          ],
                        ),
                      ),
                      Text(choices[index].title),
                    ],
                  );
                },
              ),
              TextButton(onPressed: (){
                // Get.to(UserRoles());
                Get.to(AddAccount2());
                }, child: Text("See All")),
              // Text("See All"),
              SizedBox(height: 10.0,),
              Text("Bank", style: TextStyle(fontSize: 24.0),),
              SizedBox(height: 10.0,),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.white,
                  radius: 30,
                  child: ClipOval(
                    // child: Image.asset(images[index]),
                    child: Container(
                        margin: const EdgeInsets.all(3.0),
                        padding: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        decoration:const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow:[ BoxShadow(
                                color: Color(0x11000000),
                                blurRadius: 2.0,
                                offset: Offset(2, 2)

                            )]
                        ),
                        child: Image(image: const AssetImage("assets/images/rupee1.png"))),
                  ),
                ),
              Container(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text("Bank")),
            ],
          )
          )
      );
  }
}