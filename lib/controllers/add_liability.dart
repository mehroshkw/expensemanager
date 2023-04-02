import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddLiability extends GetxController with SingleGetTickerProviderMixin {
  late TabController controller;
  final List<Tab> myTabs = <Tab>[
    Tab(
      text: 'To Take',
      // child: Container(
      //   decoration: const BoxDecoration(
      //             color: Color(0xfff12830),
      //             borderRadius: BorderRadius.only(
      //             topRight: Radius.circular(20.0),
      //             bottomRight: Radius.circular(20.0)
      //             )
      //   ),
      // ),
    ),
    Tab(
      text: 'To Given',
    )
  ];

  @override
  void onInit() {
    controller = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
