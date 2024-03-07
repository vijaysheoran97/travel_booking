import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/screens/home_screen.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';
import 'package:travel_booking/travel_booking/ui/widget/navigation_bar.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColorConstant.appScendoryColor,
        title: const Text(
          "Welcome to Travel Booking",
          style: TextStyle(color: AppColorConstant.appTextColor),
        ),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigation()));
                },
                child: Container(
                  width: 400,
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppColorConstant.appScendoryColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
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
            SizedBox(height: 28,),
            Row(
              children: [
                Text("Don't have an account?"),
                Text("Register",style: TextStyle(color: AppColorConstant.appElevatedButtonColor),),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
