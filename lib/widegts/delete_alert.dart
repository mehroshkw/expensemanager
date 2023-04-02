import 'package:flutter/material.dart';

Widget getContent() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Image.asset(
        'assets/images/delete_24px.png',
        height: 150,
        width: 150,
      ),

      Column(
        children: [
          Image.asset('assets/images/garbage.png',
          ),
          const SizedBox(
            height: 15,
          ),

          const Text(
            'Are you sure you want to delete?',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      )
    ],
  );

}

Widget confirmBtn() {
  return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: const Color(0xff1ECB82),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500),
      ),
      child: const Text('YES DELETE',
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),

      ));
}

Widget cancelBtn() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      primary: const Color(0xfff8f7f8),
      side: const BorderSide(
          width: 1,
          color: Colors.black12),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      textStyle: const TextStyle(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w500),
    ),
    child: const Text('CANCEL',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

