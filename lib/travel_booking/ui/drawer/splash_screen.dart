import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_string_constent.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: AppColorConstant.appScendoryColor,
          appBar: AppBar(
            backgroundColor: AppColorConstant.appScendoryColor,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
              ),
            ),
            title: const Text(
              AppStringConstant.splashScreen,
            ),
          ),
          body: const Center(
              child: Icon(
            Icons.spa_outlined,
            size: 200,
          )),
        );
  }
}
