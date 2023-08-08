import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../res/images/image_assets.dart';
import '../../../view_model/controllers/days_controller.dart';
import '../../../view_model/controllers/home_controller.dart';
import '../../home/components/small_container.dart';
class SmallContainerList extends StatelessWidget {
   SmallContainerList({super.key});
  final homeController=Get.put(HomeController());
  final controller=Get.put(DaysController());
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Obx(() => SmallContainer(text: '${controller.day.value.precipprob.toInt().toString()}%', image: ImageAssets.heavyRain,color: Colors.white38,textColor: Colors.white,),),
        const Spacer(),
        Obx(() => SmallContainer(text: '${controller.day.value.windspeed.toInt().toString()}km/h', image: ImageAssets.wind,color: Colors.white38,textColor: Colors.white,),),
        const Spacer(),
        Obx(() => SmallContainer(text: '${controller.day.value.humidity.toInt().toString()}%', image: ImageAssets.sun,color: Colors.white38,textColor: Colors.white,),),
        const Spacer(),
      ],
    );
  }
}
