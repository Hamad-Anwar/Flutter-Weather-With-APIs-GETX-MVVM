import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/view/next-days/components/small_container_list.dart';

import '../../../res/images/image_assets.dart';
import '../../../utils/utils.dart';
import '../../../view_model/controllers/days_controller.dart';
import '../../../view_model/controllers/home_controller.dart';
class CenterCard extends StatelessWidget {
   CenterCard({super.key});
  final homeController=Get.put(HomeController());
  final controller=Get.put(DaysController());
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.sizeOf(context);
    return Container(
      height: 450,
      width: size.width,
      margin: const EdgeInsets.only(top: 80),
      child: Stack(
        children: [
          Positioned(
            bottom: 50,
            left: 30,
            right: 30,
            child: Container(
              height: 350,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xff89f7fe),
                        Color(0xff66a6ff),
                      ]
                  )
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child:
                    Padding(
                      padding: const EdgeInsets.only(right: 30,top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.white,
                                    Colors.white.withOpacity(.5)
                                  ],
                                  // Adjust the stops to control the gradient area
                                ).createShader(bounds);
                              },
                              child: Obx(()=>Text(
                                '${controller.day.value.temp.toInt().toString()}\u00B0',
                                style: const TextStyle(
                                  fontSize: 80,
                                  height: 0,
                                  fontWeight: FontWeight.bold,
                                  color:
                                  Colors.white, // Initial color of the text
                                ),
                              ),)
                          ),
                          Obx(() => Text(
                            'Feel like ${controller.day.value.feelslike}',
                            style: const TextStyle(
                                height: 0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),)

                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Obx(() => Text(
                            controller.day.value.conditions,
                            style: const TextStyle(
                                height: 0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),),
                          const SizedBox(height: 5,),
                          Text(
                            Utils.currentTime(),
                            style: TextStyle(
                                height: 0,
                                color: Colors.white.withOpacity(.8),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          const Spacer()
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Colors.white.withOpacity(.5)
                          ],
                          // Adjust the stops to control the gradient area
                        ).createShader(bounds);
                      },
                      child: Image.asset(ImageAssets.windWave,height: 130,width: 200,fit: BoxFit.fill,),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    child: SizedBox(
                      width: size.width-60,
                      child: SmallContainerList(),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              left: 30,
              top: 1,
              child:
              Obx(() => Image.asset(
                  controller.getImage(controller.currentDay.value,),height: 190,width: 190,),)
          ),
        ],
      ),
    );
  }
}
