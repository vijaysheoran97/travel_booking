import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Column(
        children: [],
      ),
      appBar: AppBar(
        backgroundColor: AppColorConstant.appScendoryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.dark_mode_outlined,
              color: AppColorConstant.appTextColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_outline,
              color: AppColorConstant.appTextColor,
            ),
          ),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
