import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/screens/login_screen.dart';
import 'package:travel_booking/travel_booking/ui/screens/welcome_screen.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_string_constent.dart';
import 'package:travel_booking/travel_booking/ui/widget/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStringConstant.appTitle,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: AppColorConstant.appSeedColor),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark().copyWith(),
      themeMode: ThemeMode.system,
      home: WelcomeScreen(),
    );
  }
}
