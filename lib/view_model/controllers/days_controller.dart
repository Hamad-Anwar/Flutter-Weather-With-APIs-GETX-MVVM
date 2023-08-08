import 'package:get/get.dart';
import 'package:weather/Model/data_model.dart';
import 'package:weather/view_model/controllers/home_controller.dart';

import '../../res/images/image_assets.dart';
import '../../utils/utils.dart';

class DaysController extends GetxController{
  RxInt currentDay=0.obs;
  final homeController=Get.put(HomeController());
  late Rx<Days> day;
  DaysController(){
    day=homeController.model.value!.days![0].obs;
  }


  setDay(int index){
    day.value=homeController.model.value!.days![index];
    currentDay.value=index;
  }

  String getImage(int index){
    return Utils.imageMap[homeController.model.value!.days![index].conditions]==null ? ImageAssets.nightStarRain :
    Utils.imageMap[homeController.model.value!.days![index].conditions]!;
  }

  String getMonth(int index){
    return Utils.extractDate(homeController.model.value!.days![index].datetime);
  }

  String getMonthDay(int index){
    return Utils.extractDay(homeController.model.value!.days![index].datetime);
  }

   String getDate(int index){
    return Utils.formateDate(DateTime.parse(homeController.model.value!.days![index].datetime));
  }
  String getMinTemp(int index){
    return '${homeController.model.value!.days![index].tempmin.toInt()}\u00B0';
  }

  String getMaxTemp(int index){
    return '${homeController.model.value!.days![index].tempmax.toInt()}\u00B0';
  }

}