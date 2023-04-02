import 'package:expensemanager/controllers/controller.dart';
import 'package:get/get.dart';

class AssetBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddAssetController());
  }
}
