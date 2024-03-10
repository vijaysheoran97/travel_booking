import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/screens/register_screen.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';
import 'package:travel_booking/travel_booking/ui/widget/navigation_bar.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: AppColorConstant.appScendoryColor,
          child: const Column(
            children: [
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColorConstant.appScendoryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.dark_mode_outlined,
              color: AppColorConstant.appTextColorblack,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_outline,
              color: AppColorConstant.appTextColorblack,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Add an Expanded widget to take up remaining space
            Expanded(
              child: Container(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavigation()));
                },
                child: Container(
                  width: 400,
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppColorConstant.appScendoryColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: AppColorConstant.appTextColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()));
                    },
                    child: const Text(
                      "Register",
                      style:
                          TextStyle(color: AppColorConstant.appScendoryColor),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
