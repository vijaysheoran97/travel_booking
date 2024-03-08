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
      appBar: AppBar(
        backgroundColor: AppColorConstant.appBarColor,
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
                  ClipOval(
                    child: Image.asset(
                      'assets/images/images.jpg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
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
              title: const Text(
                'Menu',
                style: TextStyle(
                    color: AppColorConstant.appTextColorblack,
                    fontWeight: FontWeight.w600),
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
              title: const Text(
                'Others',
                style: TextStyle(
                    color: AppColorConstant.appTextColorblack,
                    fontWeight: FontWeight.w600),
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
      body: const Column(
        children: [
          // Your body content here
        ],
      ),
    );
  }
}
