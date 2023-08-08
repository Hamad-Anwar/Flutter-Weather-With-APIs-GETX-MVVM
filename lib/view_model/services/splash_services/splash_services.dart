import 'dart:async';

import 'package:get/get.dart';
import 'package:weather/view/home/home_screen.dart';
import 'package:weather/view_model/controllers/home_controller.dart';

class SplashServices{
  static void getApiData(){
    final controller=Get.put(HomeController());
    controller.getData();
  }
}