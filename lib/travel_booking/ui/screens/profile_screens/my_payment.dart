import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/screens/profile_screens/addNewCreditCard.dart';
import 'package:travel_booking/travel_booking/ui/screens/profile_screens/add_Address.dart';

import '../../utils/app_color_constent.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isAutoFillModeEnabled = false;

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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Payment Method',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "You don't have any payment method",
              style: TextStyle(
                  fontSize: 15, color: AppColorConstant.appText2Color),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
                onTap: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (context) => const AddNewCreditCardPage()));
                },
                tileColor: AppColorConstant.appText2Color.shade100,
                title: const Text(
                  'Add new Credit Card',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                trailing: InkWell(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (context) => const AddNewCreditCardPage()));
                  },
                  child: const Icon(
                    Icons.add_circle_outline,
                    color: AppColorConstant.appScendoryColor,
                    size: 27,
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            ListTile(
                tileColor: AppColorConstant.appText2Color.shade100,
                title: const Text(
                  'Add new Paypal address',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                trailing: const Icon(
                  Icons.add_circle_outline,
                  color: AppColorConstant.appScendoryColor,
                  size: 27,
                )),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Transactions History',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Transactions will show in this section when you make one",
              style: TextStyle(
                  fontSize: 15, color: AppColorConstant.appText2Color),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Payment Infromation',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              tileColor: AppColorConstant.appText2Color.shade100,
              title: const Text(
                'Auto fill mode',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              trailing: Switch(
                value: isAutoFillModeEnabled,
                onChanged: (value) {
                  setState(() {
                    isAutoFillModeEnabled = value;
                    // Add code to handle dark mode switch here
                  });
                },
                inactiveTrackColor: AppColorConstant.appText2Color,
                inactiveThumbColor: AppColorConstant.appTextColor,
                trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
                activeTrackColor: AppColorConstant.appScendoryColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context) => const AddAddressPage()));
              },
                tileColor: AppColorConstant.appText2Color.shade100,
                title: const Text(
                  'Add Shipping address',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                trailing: const Icon(
                  Icons.add_circle_outline,
                  color: AppColorConstant.appScendoryColor,
                  size: 27,
                )),
          ],
        ),
      ),
    );
  }
}
