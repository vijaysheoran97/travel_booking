import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_string_constent.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
            color: AppColorConstant.appTextColor,
          ),
        ),
        title: const Text(
          AppStringConstant.setting,
          style: TextStyle(color: AppColorConstant.appTextColor),
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
                color: AppColorConstant.appTextColor,
              ),
            ),
            title: const Text(AppStringConstant.myAddress),
            onTap: () {},
          ),
          Divider(),
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
                color: AppColorConstant.appTextColor,
              ),
            ),
            title: const Text(AppStringConstant.payment),
            onTap: () {},
          ),
          Divider(), ListTile(
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColorConstant.appScendoryColor,
              ),
              height: 35,
              width: 35,
              child: const Icon(
                Icons.square_outlined,
                color: AppColorConstant.appTextColor,
              ),
            ),
            title: const Text(AppStringConstant.changePassword),
            onTap: () {},
          ),
          Divider(), ListTile(
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColorConstant.appScendoryColor,
              ),
              height: 35,
              width: 35,
              child: const Icon(
                Icons.square_outlined,
                color: AppColorConstant.appTextColor,
              ),
            ),
            title: const Text(AppStringConstant.forgetPassword),
            onTap: () {},
          ),
          Divider(), ListTile(
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColorConstant.appScendoryColor,
              ),
              height: 35,
              width: 35,
              child: const Icon(
                Icons.square_outlined,
                color: AppColorConstant.appTextColor,
              ),
            ),
            title: const Text(AppStringConstant.security),
            onTap: () {},
          ),
          Divider(), ListTile(
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColorConstant.appScendoryColor,
              ),
              height: 35,
              width: 35,
              child: const Icon(
                Icons.square_outlined,
                color: AppColorConstant.appTextColor,
              ),
            ),
            title: const Text(AppStringConstant.language),
            onTap: () {},
          ),
          Divider(), ListTile(
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColorConstant.appScendoryColor,
              ),
              height: 35,
              width: 35,
              child: const Icon(
                Icons.square_outlined,
                color: AppColorConstant.appTextColor,
              ),
            ),
            title: const Text(AppStringConstant.notification),
            onTap: () {},
          ),
          Divider(),
        ],
      ),
    );
  }
}
