import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/radio_controller.dart';

class OrderTypeButton extends StatelessWidget {
  final String value;
  final String title;

  const OrderTypeButton({
    required this.value,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ButtonController>(
      builder: (buttonController) {
        return InkWell(
          onTap: () => buttonController.setOrderType(value),
          child: Row(
            children: [
              Radio(
                value: value,
                groupValue: buttonController.orderType,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (String? value){
                },
                activeColor: const Color(0xff1ECB82),
              ),
              Text(title,),
            ],
          ),
        );
      },
    );
  }
}
