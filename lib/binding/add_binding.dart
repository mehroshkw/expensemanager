import 'package:expensemanager/controllers/add_controller.dart';
import 'package:get/get.dart';

class AddBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdddController());
  }
}
