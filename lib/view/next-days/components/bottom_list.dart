import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view_model/controllers/days_controller.dart';
import '../../../view_model/controllers/home_controller.dart';
class BottomList extends StatelessWidget {
   BottomList({super.key});
  final homeController=Get.put(HomeController());
  final controller=Get.put(DaysController());
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.sizeOf(context);
    return Positioned(
      bottom: 1,
      child: SizedBox(
        height: size.height/2,
        width: size.width,
        child: ListView.builder(
          itemCount: homeController.model.value!.days!.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              margin: EdgeInsets.only(left: 20,right: 20,top: index==0 ? 230: 10),
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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(controller.getDate(index),
                      style: const TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),
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
      ),
    );
  }
}
