import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/screens/profile_screens/add_Address.dart';

import '../../utils/app_color_constent.dart';

class MyAddressPage extends StatefulWidget {
  const MyAddressPage({Key? key}) : super(key: key);

  @override
  State<MyAddressPage> createState() => _MyAddressPageState();
}

class _MyAddressPageState extends State<MyAddressPage> {
  int selectedTile = 1; // Default selection, you can change it as needed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorConstant.appStatusBarColor,
        leading: const BackButton(
          color: AppColorConstant.appArowbackColor,
        ),
        title: const Text('My Address', style: TextStyle(fontWeight: FontWeight.w700)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context) => const AddAddressPage()));
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: AppColorConstant.appText2Color.shade600, width: 2.0),
                ),
                child: Icon(Icons.add, size: 20, color: AppColorConstant.appText2Color.shade600),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            ListTile(
              title: const Text(
                'Andy Andrew',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '+1234567890',
                    style: TextStyle(fontSize: 16, color: AppColorConstant.appText2Color),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    '1234 Your Road No #6789',
                    style: TextStyle(fontSize: 16, color: AppColorConstant.appText2Color),
                  ),
                  const Text(
                    'Your City, Country',
                    style: TextStyle(fontSize: 16, color: AppColorConstant.appText2Color),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 35.0,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: AppColorConstant.appScendoryColor),
                      ),
                      child: const Text(
                        'Change Address',
                        style: TextStyle(color: AppColorConstant.appScendoryColor, fontSize: 15, letterSpacing: 0.5),
                      ),
                    ),
                  ),
                ],
              ),
              trailing: Radio(
                value: 1,
                groupValue: selectedTile,
                onChanged: (value) {
                  setState(() {
                    selectedTile = value as int;
                  });
                },
                activeColor: AppColorConstant.appScendoryColor, // Set the color of the selected Radio button
              ),
            ),

            ListTile(
              title: const Text(
                'Elevenia Kalia',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '+1234567890',
                    style: TextStyle(fontSize: 16, color: AppColorConstant.appText2Color),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    '1234 Your Road No #6789',
                    style: TextStyle(fontSize: 16, color: AppColorConstant.appText2Color),
                  ),
                  const Text(
                    'Your City, Country',
                    style: TextStyle(fontSize: 16, color: AppColorConstant.appText2Color),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 35.0,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: AppColorConstant.appScendoryColor),
                      ),
                      child: const Text(
                        'Change Address',
                        style: TextStyle(color: AppColorConstant.appScendoryColor, fontSize: 15, letterSpacing: 0.5),
                      ),
                    ),
                  ),
                ],
              ),
              trailing: Radio(
                value: 2,
                groupValue: selectedTile,
                onChanged: (value) {
                  setState(() {
                    selectedTile = value as int;
                  });
                },
                activeColor: AppColorConstant.appScendoryColor, // Set the color of the selected Radio button
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30, right: 30, left: 30),
        child: ElevatedButton(
          onPressed: () {
            // Add your save changes logic here
          },
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              Size(
                MediaQuery.of(context).size.width * 0.9,
                60,
              ),
            ),
            backgroundColor: MaterialStateProperty.all(AppColorConstant.appScendoryColor),
          ),
          child: const Text(
            'Select Address',
            style: TextStyle(fontSize: 20, color: AppColorConstant.appTextColor),
          ),
        ),
      ),
    );
  }
}
