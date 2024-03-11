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
          body: Stack(
              children: [
            Container(
              height: screenHeight * 0.50,
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
              title: const Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  AppStringConstant.vacation,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,

                  ),
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
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: const Text(
                AppStringConstant.tajMahal,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              ),
            ),
            const Text(
              AppStringConstant.uttarPradesh,
              style: TextStyle(color: AppColorConstant.appText2Color),
            ),
            const Text(
              AppStringConstant.details,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ));
  }
}
