import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IncomeController extends GetxController with SingleGetTickerProviderMixin {
  late TabController incomecontroller;
  final List<Tab> myTabs = <Tab>[
    Tab(
      text: 'INCOME',
    ),
    Tab(
      text: 'SAVINGS',
    ),
    Tab(
      text: 'LIABILITY',
    ),
    Tab(
      text: 'ASSETS',
    )
  ];

  @override
  void onInit() {
    incomecontroller = TabController(length: 4, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    incomecontroller.dispose();
    super.onClose();
  }
}
