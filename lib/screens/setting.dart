import 'package:expensemanager/screens/home2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SwitchX sx = Get.put(SwitchX());
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    var lightmode = true;
    var textcolor = false;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff1ECB82),
          leading: IconButton(
              icon: const Icon(Icons.home_outlined,size: 30.0,),
              onPressed: () {
                Get.to(Home2());
              }
          ),
        actions: [
          IconButton(onPressed: (){
            Get.isDarkMode ? Get.changeTheme(ThemeData.light()) :
            Get.changeTheme(ThemeData.dark());
           }, icon: Icon(Icons.lightbulb))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(CupertinoIcons.bell, size: 30.0,),
            ),
            const Expanded(
              child: Text(
                "Reminders",
                style: TextStyle(
                  fontSize: 18,
                ),
                // textAlign: TextAlign.center,
              ),
            ),

            Container(

              width:35,
              height: 35,
              child: ElevatedButton(
               style: ElevatedButton.styleFrom(
                 primary: const Color(0xff1ecb82),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  // side: BorderSide(color: Colors.white)
                ),
               ),
                onPressed: (){
                },
                child:
                const Text('5',
                  style: TextStyle( color: Colors.white,
                  ), textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
            Container(
              margin: EdgeInsets.only(top: 8.0, bottom: 0.0,left: 4.0, right: 4.0),
              height: height /10,
              width: width,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                // color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Your Start Month Date",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,

                  ),
                  ),
                  Row(
                    children: const [
                      Expanded(child: Text("PKR 40,000")),
                      Icon(Icons.arrow_forward_ios, size: 18,)
                    ],
                  )

                ],
              ),
            ),
            Container(
              // margin: EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
              height: height /15,
              width: width,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                // color: Colors.white,
              ),
              child: Row(
                children:  [
                  Expanded(child: Text('Notifications')),
                  Obx(() => Switch(
                    activeColor: const Color(0xff1ECB82),
                      onChanged: (val) => sx.toggle(),
                      value: sx.on.value),
                  )
                ],
              )
           ),
            StatefulBuilder(builder: (context, myState) {
              return Container(
                height: height/15,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25.0)
                ),
                child: Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            myState(() {
                              lightmode = true;
                              textcolor =false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: lightmode
                                    ? Color(0xffffffff)
                                    :  Color(0xff000000),
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(25.0),
                                    topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0)
                                )),
                            child:  Center(
                              child: Text("Light Mode",
                              style: TextStyle(
                                color: textcolor
                                    ? Color(0xffffffff)
                                    :  Color(0xff000000),
                              ),),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            myState(() {
                              lightmode = false;
                              textcolor = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: !lightmode
                                    ? Color(0xffffffff)
                                    :  Color(0xff000000),
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(25.0),
                                    topRight: Radius.circular(25.0),
                                    topLeft: Radius.circular(25.0),
                                  bottomLeft: Radius.circular(25.0)
                                )),
                            child:  Center(
                              child: Text("Dark Mode", style: TextStyle(
                                color: !textcolor
                                    ? Color(0xffffffff)
                                    : Color(0xff000000),
                              ),),
                            ),
                          ),
                        ),
                      ),
                    ],),
                ),
              );
            }
            )
          ])
      )
    );
  }
}


class SwitchX extends GetxController {
  RxBool on = false.obs;

  void toggle() => on.value = on.value ? false : true;
}
