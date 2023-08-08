import 'package:flutter/material.dart';
import 'package:weather/res/images/image_assets.dart';
import 'package:weather/view_model/services/splash_services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashServices.getApiData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(ImageAssets.nightStarRain,height: 200,width: 200,),
      ),
    );
  }
}
