import 'package:expensemanager/binding/splashModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SplashController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == splashPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      //go to home page
    } else {
      pageController.nextPage(duration: 200.milliseconds, curve: Curves.easeIn);
    }
  }

  List<SplashModel> splashPages = [
    SplashModel(
        'assets/images/splash1.png',
        'Welcome to Expensesways ',
        ' A awesome way that gives us many useful features'),
    SplashModel(
        'assets/images/splash2.png',
        ' All your accounts in one place',
        'Add multiple accounts and track where you to invest'),
    SplashModel(
        'assets/images/splash3.png',
        ' Manage your Shopping Expenses ',
        'View all your expenses in very easy way'),
  ];
}