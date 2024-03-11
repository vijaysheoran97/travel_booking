import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_string_constent.dart';

class VacationDetailScreen extends StatefulWidget {
  const VacationDetailScreen({super.key});

  @override
  State<VacationDetailScreen> createState() => _VacationDetailScreenState();
}

class _VacationDetailScreenState extends State<VacationDetailScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
        theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
        home: Scaffold(
          body: Column(children: [
            Container(
              height: screenHeight * 0.25,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppStringConstant.image1Path),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back,
                    color: AppColorConstant.appTextColor),
              ),
             
              title: const Text(
                AppStringConstant.vacation,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
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
                    color: AppColorConstant.appTextColor,
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
