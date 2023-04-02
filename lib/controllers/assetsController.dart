import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:expensemanager/binding/assetModel.dart';


class AssetsController extends GetxController {
  var assets = <AssetsDetails>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var result = [
      AssetsDetails(
          id: 1,
          description: 'office Chairs And Furniture',
          title: 'Office Furniture',
          image: 'assets/images/assetsgroup1.png',
          price: 25.99,
      ),
      AssetsDetails(
        id: 2,
        description: 'office Chairs And Furniture',
        title: 'Office Furniture',
        image: 'assets/images/assetsgroup2.png',
        price: 25.99,
      ),

      AssetsDetails(
        id: 3,
        description: 'office Chairs And Furniture',
        title: 'Office Furniture',
        image: 'assets/images/assetgroup3.png',
        price: 25.99,
      ),
      AssetsDetails(
        id: 4,
        description: 'office Chairs And Furniture',
        title: 'Office Furniture',
        image: 'assets/images/assetsgroup4.png',
        price: 25.99,
      ),
    ];

    assets.value = result;
  }
}
