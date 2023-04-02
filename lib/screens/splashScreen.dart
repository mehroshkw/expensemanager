import 'package:expensemanager/screens/dashboard.dart';
import 'package:expensemanager/screens/homeuserroles.dart';
import 'package:expensemanager/screens/login.dart';
import 'package:expensemanager/unused/tab_screens.dart';
import 'package:expensemanager/widegts/reusablebutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:expensemanager/controllers/splashController.dart';

class SplashScreen extends StatelessWidget {
  final _controller = SplashController();
  // final width = MediaQuery.of(context).size.width;
  // final height = MediaQuery.of(context).size.height;

  SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1ecb82),
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: _controller.pageController,
                onPageChanged: _controller.selectedPageIndex,
                itemCount: _controller.splashPages.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 100,),
                      Image.asset(
                          _controller.splashPages[index].image,
                        width: 250,
                        height: 250,),
                      const SizedBox(height: 30),
                      Text(
                        _controller.splashPages[index].title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          _controller.splashPages[index].description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
            Positioned(
              // top: 626,
              bottom: 170,
              left: 150,
              child: Row(
                children: List.generate(
                  _controller.splashPages.length,
                      (index) => Obx(() {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      width: 15,
                      height: 10,
                      decoration: BoxDecoration(
                        color: _controller.selectedPageIndex.value == index
                            ? const Color(0xff023d43)
                            : Colors.white,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),
              ),
            ),
            Positioned(

              // top: 687,
              left: 0,
              right: 0,
              bottom: 60,
              child:
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 8.0),
              //   width:330,
              //   height: 50,
              //   child: RaisedButton(
              //     color: const Color(0xff1ecb82),
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(8.0),
              //         side: const BorderSide(color: Colors.white)
              //     ),
              //     onPressed: (){
              //       Get.off(UserRoles());
              //     },
              //     child: const Text('Get Started',
              //       style: TextStyle(
              //         color: Colors.white,
              //       ), ),
              //   ),
              // ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ReusablePrimaryButton(buttonText: 'Get Started', onTap: () { Get.off(Login()); },))
            )
          ],
        ),
      ),
    );
  }
}