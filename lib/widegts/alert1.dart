

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonController extends GetxController {

  String _downloadtype = "PDF";
  String get downloadtype => _downloadtype;

  void setDownloadType(String type){
    _downloadtype = type;
    update();
  }
}