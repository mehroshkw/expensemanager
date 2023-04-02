import 'package:expensemanager/screens/add_liability.dart';
import 'package:expensemanager/screens/addaccount1.dart';
import 'package:expensemanager/screens/addasset.dart';
import 'package:expensemanager/screens/assets.dart';
import 'package:expensemanager/screens/home.dart';
import 'package:expensemanager/unused/tab_screens.dart';
import 'package:expensemanager/screens/transactions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../controllers/homeController.dart';

class LandingPage extends StatelessWidget {

  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.black.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
  const TextStyle(color: Colors.black38, fontWeight: FontWeight.w500, fontSize: 12);

   LandingPage({Key? key}) : super(key: key);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 54,
            child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.black.withOpacity(0.5),
            selectedItemColor: const Color(0xff1ECB82),
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            type: BottomNavigationBarType.fixed,

            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.home_outlined,
                    size: 20.0,
                  ),
                ),

                label: 'Home',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.payment,
                    size: 20.0,
                  ),
                ),
                label: 'Transaction',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                ),
                label: ' ',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.crop_square_outlined,
                    size: 20.0,
                  ),
                ),
                label: 'Assets',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.card_travel_outlined,
                    size: 20.0,
                  ),
                ),
                label: 'Liability',
                backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {

    final LandingPageController landingPageController =
    Get.put(LandingPageController(), permanent: false);
    return Scaffold(
        resizeToAvoidBottomInset: false,
      floatingActionButton: new FloatingActionButton(
        onPressed: () { Get.to(AddAccount1()); },
        child: const Icon(Icons.add),
        backgroundColor: Color(0xff1ECB82),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: buildBottomNavigationMenu(context, landingPageController,),

      body: Obx(() => IndexedStack(
        index: landingPageController.tabIndex.value,
        children: [
          Home(),
          Transactions(),
          Home(),
          Assets(),
          AddLiabilityScreen(),
        ],
      )),
    );
  }
}