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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              AppStringConstant.components,
            ),
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
                  child: const Icon(
                    Icons.square_outlined,
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
        );
  }
}
