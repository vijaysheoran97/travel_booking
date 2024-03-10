import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/screens/tour_profile/custom_appbar_screen.dart';
import 'package:travel_booking/travel_booking/ui/screens/tour_profile/tour_statistics_screen.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_string_constent.dart';

class TourProfileScreen extends StatefulWidget {
  const TourProfileScreen({Key? key}) : super(key: key);

  @override
  State<TourProfileScreen> createState() => _TourProfileScreenState();
}

class _TourProfileScreenState extends State<TourProfileScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              height: screenHeight * 0.25,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppStringConstant.image1Path),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            CustomAppBar(
              isDarkMode: isDarkMode,
              onBackButtonPressed: () {
                Navigator.pop(context);
              },
              onToggleDarkMode: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
            ),
            Positioned(
              top: screenHeight * 0.3,
              left: screenWidth * 0.05,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStringConstant.jonskyAlexias,
                    style: TextStyle(
                        fontSize: screenHeight * 0.06,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    AppStringConstant.international,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Positioned(
              top: screenHeight * 0.48,
              left: 0,
              right: 0,
              child: TourStatistics(),
            ),
          ],
        ),
      ),
    );
  }
}
