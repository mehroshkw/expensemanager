import 'package:get/get.dart';

import 'package:expensemanager/controllers/dateController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DateController>(
          () => DateController(),
    );
  }
}