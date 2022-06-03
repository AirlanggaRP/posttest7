

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016037_airlanggarahimahputra/home.dart';

class ssControl extends GetxController{
  start(){
    final duration = Duration(seconds: 3);
    return Timer(duration, (){
      Get.off(Home());
    });
  }
}