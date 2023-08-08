import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/res/images/image_assets.dart';
import 'package:weather/view/home/components/small_container.dart';
import 'package:weather/view_model/controllers/days_controller.dart';
import 'package:weather/view_model/controllers/home_controller.dart';

import '../../utils/utils.dart';

class NextDays extends StatelessWidget {
  final homeController=Get.put(HomeController());
  final controller=Get.put(DaysController());
  NextDays({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 1,
                child: Container(
                  height: size.height / 1.8,
                  width: size.width,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                        Color(0xff6ac5fe),
                        Color(0xff45b6fe),
                        Color(0xff45b6fe),
                        // Colors.blue
                      ])),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.blue,size: 20,),
                            ),
                            Text('Next 14 Days',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.blue,size: 20,),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      SizedBox(
                        height: 130,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: homeController.model.value!.days!.length,
                          itemBuilder: (context, index) {
                            return Obx(() => GestureDetector(
                              onTap: () => controller.setDay(index),
                              child: Container(
                                width: 70,
                                margin: const EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                    color: controller.currentDay.value==index  ? Colors.white : Colors.white12 ,
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                       controller.getImage(index),
                                      ),
                                    ),
                                    Text(
                                      controller.getMonth(index),
                                    style: TextStyle(color:
                                   controller.currentDay.value==index ? Colors.purple : Colors.white,fontSize: 30,height: 0,fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    Text(
                                      controller.getMonthDay(index),
                                      style: TextStyle(color:
                                      controller.currentDay.value==index ? Colors.purple : Colors.white,fontSize: 15,height: 0,fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ));
                        },),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 1,
                child: Container(
                  height: size.height / 1.9,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                  ),
                ),
              ),
              // bottom list
              Positioned(
                  bottom: 1,
                  child: Container(
                    height: size.height/1.9,
                    width: size.width,
                    child: ListView.builder(
                      itemCount: homeController.model.value!.days!.length,
                      itemBuilder: (context, index) {
                      return Card(
                        color: Colors.white,
                        margin: EdgeInsets.only(left: 20,right: 20,top: index==0 ? 270: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Container(
                        height: 100,
                        width: size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(controller.getDate(index),
                              style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),
                              ),
                              RichText(text: TextSpan(
                                children: [
                                  TextSpan(text: controller.getMinTemp(index),
                                    style: TextStyle(color: Colors.grey.withOpacity(.5),fontWeight: FontWeight.bold,fontSize: 30),
                                  ),
                                  TextSpan(text: '/',
                                    style: TextStyle(color:Colors.grey.withOpacity(.5),fontWeight: FontWeight.bold,fontSize: 25),
                                  ),
                                  TextSpan(text: controller.getMaxTemp(index),
                                    style: TextStyle(color: Colors.grey.withOpacity(.5),fontWeight: FontWeight.bold,fontSize: 20),
                                  ),

                                ]
                              ),
                              ),
                              Image.asset(
                               controller.getImage(index),
                                height: 70,
                                width: 70,

                              )

                            ],
                          ),
                        ),
                      );
                    },),
                  )
              ),
              Container(
                height: 450,
                width: size.width,
                margin: EdgeInsets.only(top: 80),
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
                                padding: const EdgeInsets.only(right: 50,top: 10),
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
                                        controller.day.value.temp.toInt().toString(),
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
                                    Spacer(),
                                    Obx(() => Text(
                                      controller.day.value.conditions,
                                      style: const TextStyle(
                                          height: 0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),),
                                    SizedBox(height: 5,),
                                    Text(
                                      Utils.currentTime(),
                                      style: TextStyle(
                                          height: 0,
                                          color: Colors.white.withOpacity(.8),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Spacer()
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
                                child: Row(
                                  children: [
                                    const Spacer(),
                                    Obx(() => SmallContainer(text: '${controller.day.value.precipprob.toInt().toString()}%', image: ImageAssets.heavyRain,color: Colors.white38,textColor: Colors.white,),),
                                    const Spacer(),
                                    Obx(() => SmallContainer(text: '${controller.day.value.windspeed.toInt().toString()}km/h', image: ImageAssets.wind,color: Colors.white38,textColor: Colors.white,),),
                                    const Spacer(),
                                    Obx(() => SmallContainer(text: '${controller.day.value.humidity.toInt().toString()}%', image: ImageAssets.sun,color: Colors.white38,textColor: Colors.white,),),
                                    const Spacer(),
                                  ],
                                ),
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
                    Image.asset(ImageAssets.sunHeavyRain)
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
