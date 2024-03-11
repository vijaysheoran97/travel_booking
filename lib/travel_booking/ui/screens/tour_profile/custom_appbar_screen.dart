import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_string_constent.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onBackButtonPressed;

  const CustomAppBar({
    Key? key,
    required this.onBackButtonPressed,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: onBackButtonPressed,
        icon:
            const Icon(Icons.arrow_back, color: AppColorConstant.appTextColor),
      ),
      flexibleSpace: Container(
        margin: EdgeInsets.only(
            top: 100, left: MediaQuery.of(context).size.width * 0.1),
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppStringConstant.image4Path),
          ),
        ),
      ),
      title: const Text(
        AppStringConstant.profile,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}



