import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/res/images/image_assets.dart';
import 'package:weather/view/home/components/small_container.dart';
import 'package:weather/view_model/controllers/home_controller.dart';
class ContainerList extends StatelessWidget {
  ContainerList({super.key});
  final controller=Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SmallContainer(text: '${controller.model.value!.currentConditions!.cloudcover.toInt()}%', image: ImageAssets.heavyRain),
          SmallContainer(text : '${controller.model.value!.currentConditions!.windspeed.toInt()}km/h',image : ImageAssets.wind),
          SmallContainer(text :'${controller.model.value!.currentConditions!.humidity.toInt().toString()}%', image :ImageAssets.sun),
        ],
      ),
    );
  }
}
