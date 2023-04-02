import 'package:expensemanager/controllers/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AdddController extends GetxController {
  final bankController = TextEditingController();
  final amountController = TextEditingController();


  @override
  void onClose() {
    bankController.dispose();
    amountController.dispose();
    super.onClose();
  }


  // Api Simulation
  Future<bool> checkAsset(String bank, String amount) {
    if (bank == 'bank' && amount == 'amount') {
      return Future.value(true);
    }
    return Future.value(false);
  }
}
