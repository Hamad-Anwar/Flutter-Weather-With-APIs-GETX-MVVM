import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/res/images/image_assets.dart';
import 'package:weather/utils/utils.dart';
import 'package:weather/view/home/components/app_bar.dart';
import 'package:weather/view/home/components/container_list.dart';
import 'package:weather/view/home/components/hours_list.dart';
import 'package:weather/view/home/components/info_card.dart';
import 'package:weather/view/next-days/next_14_days.dart';
import 'package:weather/view_model/controllers/home_controller.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const CustomAppBar(),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${controller.model.value!.address.toString()},\n${controller.model.value!.timezone.toString()}',
                        style: const TextStyle(
                            height: 0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Text(
                        Utils.formateDate(DateTime.now()),
                        style: TextStyle(
                            color: Colors.grey.withOpacity(.7),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset(ImageAssets.map),
                  )
                ],
              ),
              InfoCard(),
              ContainerList(),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => Get.to( NextDays()),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        'Today',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Spacer(),
                      Text(
                        'Next 7 Days >',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
              HoursList(),

            ],
          ),
        ),
      ),
    );
  }
}
