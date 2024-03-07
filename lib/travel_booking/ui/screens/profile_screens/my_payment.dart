import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/screens/profile_screens/add_Payment.dart';

import '../../utils/app_color_constent.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
        title: const Text('My Payment',
            style: TextStyle(fontWeight: FontWeight.w700)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const AddPaymentPage()));
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                      color: AppColorConstant.appText2Color.shade600,
                      width: 2.0),
                ),
                child: Icon(Icons.add,
                    size: 20, color: AppColorConstant.appText2Color.shade600),
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
              leading: CircleAvatar(
                child: Icon(Icons.account_box_outlined),
              ),
              title: const Text(
                'BCA (Bank Central Asia)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '************12345',
                    style: TextStyle(
                        fontSize: 16, color: AppColorConstant.appText2Color),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Brooklyn Simmons',
                    style: TextStyle(
                        fontSize: 16, color: AppColorConstant.appText2Color),
                  ),SizedBox(height: 15,),
                  Divider()
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
                activeColor: AppColorConstant
                    .appScendoryColor, // Set the color of the selected Radio button
              ),
            ),

            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.account_box),
              ),
              title: const Text(
                'BCA (Bank Central Asia)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '************12345',
                    style: TextStyle(
                        fontSize: 16, color: AppColorConstant.appText2Color),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Brooklyn Simmons',
                    style: TextStyle(
                        fontSize: 16, color: AppColorConstant.appText2Color),
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
                activeColor: AppColorConstant
                    .appScendoryColor, // Set the color of the selected Radio button
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
            'Select Payment',
            style: TextStyle(fontSize: 20, color: AppColorConstant.appTextColor),
          ),
        ),
      ),
    );
  }
}
