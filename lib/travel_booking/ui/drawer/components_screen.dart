import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/drawer/splash_screen.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_string_constent.dart';

class ComponentsScreen extends StatefulWidget {
  const ComponentsScreen({super.key});

  @override
  State<ComponentsScreen> createState() => _ComponentsScreenState();
}

class _ComponentsScreenState extends State<ComponentsScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
        home: Scaffold(
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
              AppStringConstant.components,
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
          body: Column(
            children: [
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColorConstant.appScendoryColor,
                  ),
                  height: 35,
                  width: 35,
                  child: Icon(
                    Icons.square_outlined,
                    color: isDarkMode
                        ? AppColorConstant.appTextColor
                        : AppColorConstant.appTextColorblack,
                  ),
                ),
                title: const Text(AppStringConstant.splashScreen),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SplashScreen();
                  }));
                },
              ),
              const Divider(),
            ],
          ),
        ));
  }
}
