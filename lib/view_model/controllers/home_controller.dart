import 'package:get/get.dart';
import 'package:weather/Model/data_model.dart';
import 'package:weather/repositry/home_repositry.dart';
import 'package:weather/view/home/home_screen.dart';

class HomeController extends GetxController{
  Rx<DataModel?> model = Rx<DataModel?>(null);


  getData(){
    HomeReposirty.hitApi().then((value) {
      model.value=DataModel.fromJson(value);
      Get.to(const HomeScreen());
    });
  }

}