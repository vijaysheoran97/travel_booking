import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/drawer/components_screen.dart';
import 'package:travel_booking/travel_booking/ui/drawer/setting_screen.dart';
import 'package:travel_booking/travel_booking/ui/screens/tour_profile/tour_profile_screen.dart';
import 'package:travel_booking/travel_booking/ui/screens/vacation/vacation_detail_screen.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_string_constent.dart';
import 'package:travel_booking/travel_booking/ui/widget/likeable_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkMode = false;
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: AppColorConstant.appTextColor,
          ),
          backgroundColor: AppColorConstant.appScendoryColor,
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
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_outline,
                color: AppColorConstant.appTextColor,
              ),
            ),
          ],
        ),
        drawer: Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
          ),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: AppColorConstant.appScendoryColor,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: ClipOval(
                        child: Image.asset(
                          AppStringConstant.imagePath,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      AppStringConstant.angelaMayer,
                      style: TextStyle(
                        color: AppColorConstant.appTextColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  AppStringConstant.menu,
                  style: TextStyle(
                    color: isDarkMode
                        ? AppColorConstant.appTextColor
                        : AppColorConstant.appTextColorblack,
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColorConstant.appScendoryColor,
                  ),
                  height: 35,
                  width: 35,
                  child: const Icon(
                    Icons.watch_later_outlined,
                    color: AppColorConstant.appTextColor,
                  ),
                ),
                title: const Text(AppStringConstant.overview),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const HomeScreen();
                }));},
              ),
              const Divider(),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColorConstant.appScendoryColor,
                  ),
                  height: 35,
                  width: 35,
                  child: const Icon(
                    Icons.contact_page_outlined,
                    color: AppColorConstant.appTextColor,
                  ),
                ),
                title: const Text(AppStringConstant.pages),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                title: Text(
                  AppStringConstant.others,
                  style: TextStyle(
                    color: isDarkMode
                        ? AppColorConstant.appTextColor
                        : AppColorConstant.appTextColorblack,
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColorConstant.appScendoryColor,
                  ),
                  height: 35,
                  width: 35,
                  child: const Icon(
                    Icons.settings_input_component,
                    color: AppColorConstant.appTextColor,
                  ),
                ),
                title: const Text(AppStringConstant.components),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ComponentsScreen();
                  }));
                },
              ),
              const Divider(),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColorConstant.appScendoryColor,
                  ),
                  height: 35,
                  width: 35,
                  child: const Icon(
                    Icons.settings,
                    color: AppColorConstant.appTextColor,
                  ),
                ),
                title: const Text(AppStringConstant.setting),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SettingScreen();
                  }));
                },
              ),
              const Divider(),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColorConstant.appScendoryColor,
                  ),
                  height: 35,
                  width: 35,
                  child: const Icon(
                    Icons.dark_mode_outlined,
                    color: AppColorConstant.appTextColor,
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(AppStringConstant.switchTo),
                    Container(
                      height: 20,
                      width: 32,
                      child: Switch(
                        value: isDarkMode,
                        onChanged: (value) {
                          setState(() {
                            isDarkMode = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: ClipOval(
                          child: Image.asset(
                            AppStringConstant.imagePath,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        AppStringConstant.hiAndyNetherlands,
                        style: TextStyle(
                            color: isDarkMode
                                ? AppColorConstant.appTextColor
                                : AppColorConstant.appTextColorblack,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 68,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: isDarkMode
                                ? AppColorConstant.appTextColor
                                : AppColorConstant.appTextColorblack,
                            width: 2.0, // Border width
                          ),
                        ),
                        height: 42,
                        width: 42,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notification_add_outlined,
                            color: isDarkMode
                                ? AppColorConstant.appTextColor
                                : AppColorConstant.appTextColorblack,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: isDarkMode
                                ? AppColorConstant.appTextColor
                                : AppColorConstant.appTextColorblack,
                            width: 2.0, // Border width
                          ),
                        ),
                        height: 42,
                        width: 42,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.message,
                            color: isDarkMode
                                ? AppColorConstant.appTextColor
                                : AppColorConstant.appTextColorblack,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: AppStringConstant.searchHint,
                      prefixIcon: Icon(
                        Icons.search,
                        color: isDarkMode
                            ? AppColorConstant.appTextColor
                            : AppColorConstant.appTextColorblack,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: isDarkMode
                              ? AppColorConstant.appTextColor
                              : AppColorConstant.appTextColorblack,
                          width: 2.0, // Border width
                        ),
                      ),
                      height: 42,
                      width: 42,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.sailing,
                          color: isDarkMode
                              ? AppColorConstant.appTextColor
                              : AppColorConstant.appTextColorblack,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: isDarkMode
                              ? AppColorConstant.appTextColor
                              : AppColorConstant.appTextColorblack,
                          width: 2.0, // Border width
                        ),
                      ),
                      height: 42,
                      width: 42,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.car_crash_outlined,
                          color: isDarkMode
                              ? AppColorConstant.appTextColor
                              : AppColorConstant.appTextColorblack,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: isDarkMode
                              ? AppColorConstant.appTextColor
                              : AppColorConstant.appTextColorblack,
                          width: 2.0, // Border width
                        ),
                      ),
                      height: 42,
                      width: 42,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings_input_component,
                          color: isDarkMode
                              ? AppColorConstant.appTextColor
                              : AppColorConstant.appTextColorblack,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          AppStringConstant.airport,
                          style: TextStyle(
                            color: isDarkMode
                                ? AppColorConstant.appTextColor
                                : AppColorConstant.appTextColorblack,
                            fontSize: MediaQuery.of(context).size.width * 0.03,
                          ),
                        ),
                        Text(
                          AppStringConstant.rental,
                          style: TextStyle(
                            color: isDarkMode
                                ? AppColorConstant.appTextColor
                                : AppColorConstant.appTextColorblack,
                            fontSize: MediaQuery.of(context).size.width * 0.03,
                          ),
                        ),
                        Text(
                          AppStringConstant.more,
                          style: TextStyle(
                            color: isDarkMode
                                ? AppColorConstant.appTextColor
                                : AppColorConstant.appTextColorblack,
                            fontSize: MediaQuery.of(context).size.width * 0.03,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  AppStringConstant.frequentlyVisited,
                  style: TextStyle(
                    color: isDarkMode
                        ? AppColorConstant.appTextColor
                        : AppColorConstant.appTextColorblack,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                 GestureDetector(
                   onTap: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (context) => const VacationDetailScreen(),
                       ),
                     );
                   },
                   child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LikableImage(imagePath: AppStringConstant.image1Path),
                      LikableImage(imagePath: AppStringConstant.image2Path),
                    ],
                                   ),
                 ),
                const SizedBox(
                  height: 16,
                ),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(AppStringConstant.tahitiBeach),
                      Text(AppStringConstant.stLuciaMountain),
                    ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                      padding: const EdgeInsets.all(8),
                      child: GestureDetector(
                        child: const Text(
                          AppStringConstant.tourGuide,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TourProfileScreen(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            height: 130,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                AppStringConstant.image3Path,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            height: 130,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                AppStringConstant.image4Path,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(AppStringConstant.emiliaRicardo),
                    Text(AppStringConstant.jonskyAlexia),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
