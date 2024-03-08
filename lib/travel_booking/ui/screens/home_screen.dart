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

    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: AppColorConstant.appTextColor,
          ),
          backgroundColor: AppColorConstant.appBarColor,
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
                  color: AppColorConstant.appBarColor,
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
                          'assets/images/images.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Angela Mayer\nVerified user.Membership',
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
                  'Menu',
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
                    color: AppColorConstant.appBarColor,
                  ),
                  height: 35,
                  width: 35,
                  child: const Icon(
                    Icons.watch_later_outlined,
                    color: AppColorConstant.appTextColor,
                  ),
                ),
                title: const Text('Overview'),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColorConstant.appBarColor,
                  ),
                  height: 35,
                  width: 35,
                  child: const Icon(
                    Icons.contact_page_outlined,
                    color: AppColorConstant.appTextColor,
                  ),
                ),
                title: const Text('Pages'),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                title: Text(
                  'Others',
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
                    color: AppColorConstant.appBarColor,
                  ),
                  height: 35,
                  width: 35,
                  child: const Icon(
                    Icons.settings_input_component,
                    color: AppColorConstant.appTextColor,
                  ),
                ),
                title: const Text('Components'),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColorConstant.appBarColor,
                  ),
                  height: 35,
                  width: 35,
                  child: const Icon(
                    Icons.settings,
                    color: AppColorConstant.appTextColor,
                  ),
                ),
                title: const Text('Setting'),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColorConstant.appBarColor,
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
                    const Text('Switch To Dark Mode'),
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

        body: Padding(
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
                          'assets/images/images.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Hi, Andy\nNetherlands',
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
                    hintText: 'Search...',
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
                        'Airport',
                        style: TextStyle(
                          color: isDarkMode
                              ? AppColorConstant.appTextColor
                              : AppColorConstant.appTextColorblack,
                          fontSize: MediaQuery.of(context).size.width * 0.03,
                        ),
                      ),
                      Text(
                        'Rental',
                        style: TextStyle(
                          color: isDarkMode
                              ? AppColorConstant.appTextColor
                              : AppColorConstant.appTextColorblack,
                          fontSize: MediaQuery.of(context).size.width * 0.03,
                        ),
                      ),
                      Text(
                        'More',
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
              const SizedBox(
                height: 16,
              ),
              Text(
                'Frequently visited',
                style: TextStyle(
                  color: isDarkMode
                      ? AppColorConstant.appTextColor
                      : AppColorConstant.appTextColorblack,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                ),
              ),
            ],
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
