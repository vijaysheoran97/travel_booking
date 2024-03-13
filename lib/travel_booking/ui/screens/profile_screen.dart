import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/screens/profile_screens/change_Password.dart';
import 'package:travel_booking/travel_booking/ui/screens/profile_screens/help_support.dart';
import 'package:travel_booking/travel_booking/ui/screens/profile_screens/language.dart';
import 'package:travel_booking/travel_booking/ui/screens/profile_screens/legal_policies.dart';
import 'package:travel_booking/travel_booking/ui/screens/profile_screens/my_Address.dart';
import 'package:travel_booking/travel_booking/ui/screens/profile_screens/my_Profile.dart';
import 'package:travel_booking/travel_booking/ui/screens/profile_screens/my_payment.dart';
import 'package:travel_booking/travel_booking/ui/screens/profile_screens/notification.dart';
import 'package:travel_booking/travel_booking/ui/screens/profile_screens/security.dart';

import '../utils/app_color_constent.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: AppColorConstant.appStatusBarColor,
      //   elevation: 0,
      //   centerTitle: true,
      //   title: const Text(
      //     "My Profile",
      //     style: TextStyle(
      //         fontWeight: FontWeight.w600, fontSize: 23, letterSpacing: 0.5, color: AppColorConstant.appTextColorblack),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 10, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.lightGreen.shade100,
                  child: const Icon(
                    Icons.person_outline,
                    size: 30,
                  ),
                ),
                title: const Text(
                  'Andy Lexsian',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                ),
                subtitle: const Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: AppColorConstant.appText2Color,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Uttar Pradesh, India",
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColorConstant.appText2Color,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                trailing: InkWell(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (context) => const MyProfilePage()));
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(),
                    ),
                    child: const Icon(Icons.edit_outlined),
                  ),
                ),

              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 15),
                child: Text(
                  "Personel Info",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (context) => const MyAddressPage()));
                },

                leading: Icon(Icons.location_on_outlined),
                title: Text(
                  'My Address',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 18,
                  color: AppColorConstant.appArrowForwardColor,
                ),
              ),

              ListTile(
                onTap: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (context) => const PaymentPage()));
                },

                leading: Icon(Icons.account_balance_wallet_outlined),
                title: Text(
                  'Payment Method',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 18,
                  color: AppColorConstant.appArrowForwardColor,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  "Security",
                  style: TextStyle(fontSize: 15),
                ),
              ),

              ListTile(
                onTap: () { Navigator.push(context, CupertinoPageRoute(builder: (context) => const ChangePasswordPage()));},

                leading: Icon(Icons.lock_outline),
                title: Text(
                  'Change Password',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 18,
                  color: AppColorConstant.appArrowForwardColor,
                ),
              ),
              const ListTile(
                leading: Icon(Icons.lock_open_outlined),
                title: Text(
                  'Forgot Password',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 18,
                  color: AppColorConstant.appArrowForwardColor,
                ),
              ),
              ListTile(
                onTap: () { Navigator.push(context, CupertinoPageRoute(builder: (context) => const SecurityPage()));},

                leading: Icon(Icons.security_outlined),
                title: Text(
                  'Security',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 18,
                  color: AppColorConstant.appArrowForwardColor,
                ),
              ),

              ListTile(
                onTap: () { Navigator.push(context, CupertinoPageRoute(builder: (context) => const NotificationPage()));},

                leading: Icon(Icons.notifications_outlined),
                title: Text(
                  'Notifications',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 18,
                  color: AppColorConstant.appArrowForwardColor,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  "General",
                  style: TextStyle(fontSize: 15),
                ),
              ),

              ListTile(
                leading: Icon(Icons.language_outlined),
                onTap: () { Navigator.push(context, CupertinoPageRoute(builder: (context) => const LanguagePage()));},

                title: Text(
                  'Language',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 18,
                  color: AppColorConstant.appArrowForwardColor,
                ),
              ),
              const ListTile(
                  leading: Icon(Icons.delete_outlined),
                  title: Text(
                    'Clear Cache',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  trailing: Text(
                    '88 MB',
                    style: TextStyle(color: AppColorConstant.appArrowForwardColor, fontSize: 14),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  "About",
                  style: TextStyle(fontSize: 15),
                ),
              ),

              ListTile(
                onTap: () { Navigator.push(context, CupertinoPageRoute(builder: (context) => const LegalAndPoliciesPage()));},

                leading: Icon(Icons.privacy_tip_outlined),
                title: Text(
                  'Legal and Policies',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 18,
                  color: AppColorConstant.appArrowForwardColor,
                ),
              ),

              ListTile(
                onTap: () { Navigator.push(context, CupertinoPageRoute(builder: (context) => const HelpAndSupportPage()));},

                leading: Icon(Icons.privacy_tip_outlined),
                title: Text(
                  'Help & Support',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 18,
                  color: AppColorConstant.appArrowForwardColor,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.dark_mode_outlined),
                title: const Text(
                  'Dark Mode',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: Transform.scale(

                  scale: 0.9,

                  child: Switch(
                    value: isDarkModeEnabled,
                    onChanged: (value) {
                      setState(() {
                        isDarkModeEnabled = value;
                        // Add code to handle dark mode switch here
                      });
                    },

                    thumbColor: MaterialStateProperty.all(AppColorConstant.appTextColor),
                    trackColor: MaterialStateProperty.all(AppColorConstant.appScendoryColor),
                    trackOutlineColor: MaterialStateProperty.all(AppColorConstant.appScendoryColor),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: OutlinedButton(
                    onPressed: () {
                      // Add your logout logic here
                    },
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(const BorderSide(color: AppColorConstant.appScendoryColor)),
                      minimumSize: MaterialStateProperty.all(
                        Size(MediaQuery.of(context).size.width * 0.8, 60), // Adjust the width factor as needed
                      ),
                    ),
                    child: const Text('Log Out', style: TextStyle(fontSize: 20, color: AppColorConstant.appScendoryColor)),
                  ),
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}
