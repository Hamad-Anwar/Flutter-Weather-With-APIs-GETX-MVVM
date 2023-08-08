import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/view_model/controllers/home_controller.dart';
class HoursList extends StatelessWidget {
  HoursList({super.key});
  final controller=Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        itemCount: controller.model.value!.days![0].hours!.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => controller.setHour(index),
            child: Column(    // for ignoring parent height
              children: [
                Obx(() => Card(
                  elevation: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  shadowColor : controller.compareIndex(index) ? Colors.blue :Colors.white70,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Obx(() => Container(
                    height: 130,
                    width: 80,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: controller.compareIndex(index)? Colors.blue: Colors.white70,
                        borderRadius: BorderRadius.circular(50)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() => Text(
                          controller.getHour(index),
                          style:  TextStyle(
                            color:controller.compareIndex(index) ? Colors.white :Colors.grey ,
                            fontWeight: FontWeight.bold,
                          ),
                        ),),
                        Obx(() => Image.asset(
                          controller.getImage(index),
                          height: 50,
                          width: 50,
                        ),),
                        Text(
                          '${controller
                              .model.value!.days![0].hours![index].temp
                              .toInt()}\u00B0',
                          style:  TextStyle(
                              color:controller.compareIndex(index) ? Colors.white :Colors.grey ,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  )),
                ),)
              ],
            ),
          );
        },
      ),
    );
  }
}
