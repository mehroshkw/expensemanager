import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AddAssetController extends GetxController {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();


  @override
  void onClose() {
    titleController.dispose();
    descriptionController.dispose();
    super.onClose();
  }

}
