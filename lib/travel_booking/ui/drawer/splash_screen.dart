import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_string_constent.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
        home: Scaffold(
          backgroundColor: AppColorConstant.appScendoryColor,
          appBar: AppBar(
            backgroundColor: AppColorConstant.appScendoryColor,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: isDarkMode
                    ? AppColorConstant.appTextColor
                    : AppColorConstant.appTextColorblack,
              ),
            ),
            title: Text(
              AppStringConstant.splashScreen,
              style: TextStyle(
                color: isDarkMode
                    ? AppColorConstant.appTextColor
                    : AppColorConstant.appTextColorblack,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    isDarkMode = !isDarkMode;
                  });
                },
                icon: Icon(
                  isDarkMode
                      ? Icons.light_mode_outlined
                      : Icons.dark_mode_outlined,
                  color: isDarkMode
                      ? AppColorConstant.appTextColor
                      : AppColorConstant.appTextColorblack,
                ),
              ),
            ],
          ),
          body: Center(
              child: Icon(
            Icons.spa_outlined,color: isDarkMode
                  ? AppColorConstant.appTextColor
                  : AppColorConstant.appTextColorblack,
            size: 200,
          )),
        ));
  }
}
