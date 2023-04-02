import 'package:get/get.dart';

class ButtonController extends GetxController{

  String _orderType = 'PDF';
  String get orderType =>_orderType;
  void setOrderType(String type) {
    _orderType = type;
    print("The type is "+_orderType);
    update();
  }
}