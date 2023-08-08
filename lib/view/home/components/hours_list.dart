import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/view_model/controllers/home_controller.dart';

import '../../../res/images/image_assets.dart';
import '../../../utils/utils.dart';
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
          return Column(    // for ignoring parent height
            children: [
              Card(
                elevation: 10,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                shadowColor : Utils.checkTime(controller.model.value!
                      .days![0].hours![index].datetime) ? Colors.blue :Colors.grey.withOpacity(.5) ,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Container(
                  height: 130,
                  width: 80,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Utils.checkTime(controller.model.value!
                          .days![0].hours![index].datetime)? Colors.blue: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Utils.formateTimeWithout(controller.model.value!
                            .days![0].hours![index].datetime),
                        style:  TextStyle(
                          color:Utils.checkTime(controller.model.value!
                              .days![0].hours![index].datetime) ? Colors.white :Colors.grey ,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset(
                        Utils.imageMap[controller.model.value!.days![0].conditions.toString()]==null  ?
                            ImageAssets.starts

                            :Utils.imageMap[controller.model.value!.days![0].conditions.toString()]!
                        ,
                        height: 50,
                        width: 50,
                      ),
                      Text(
                        controller
                            .model.value!.days![0].hours![index].temp
                            .toInt()
                            .toString(),
                        style:  TextStyle(
                            color:Utils.checkTime(controller.model.value!
                                .days![0].hours![index].datetime) ? Colors.white :Colors.grey ,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
