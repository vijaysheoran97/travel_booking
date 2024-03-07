import 'package:flutter/material.dart';

import '../../utils/app_color_constent.dart';

class AddPaymentPage extends StatefulWidget {
  const AddPaymentPage({Key? key}) : super(key: key);

  @override
  State<AddPaymentPage> createState() => _AddPaymentPageState();
}

class _AddPaymentPageState extends State<AddPaymentPage> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cardHolderNameController = TextEditingController();
  TextEditingController expiredController = TextEditingController();
  TextEditingController cvcController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorConstant.appStatusBarColor,
        leading: const BackButton(
          color: AppColorConstant.appArowbackColor,
        ),
        title: const Text(
          'New Card',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Card Number',
              style: TextStyle(
                  fontSize: 18, color: AppColorConstant.appTextColorblack54),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: cardNumberController,
              onChanged: (value) {
                setState(() {}); // Trigger rebuild on text change
              },
              decoration: InputDecoration(
                hintText: 'Enter Card Number',
                hintStyle:
                const TextStyle(color: AppColorConstant.appText2Color),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              'Card Holder Name',
              style: TextStyle(
                  fontSize: 18, color: AppColorConstant.appTextColorblack54),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: cardHolderNameController,
              onChanged: (value) {
                setState(() {}); // Trigger rebuild on text change
              },
              decoration: InputDecoration(
                hintText: 'Enter Holder Name',
                hintStyle:
                const TextStyle(color: AppColorConstant.appText2Color),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Expired',
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColorConstant.appTextColorblack54),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        controller: expiredController,
                        onChanged: (value) {
                          setState(() {}); // Trigger rebuild on text change
                        },
                        decoration: InputDecoration(
                          hintText: 'MM/YY',
                          hintStyle: const TextStyle(
                              color: AppColorConstant.appText2Color),
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20), // Add spacing between the text fields
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'CVC Code',
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColorConstant.appTextColorblack54),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        controller: cvcController,
                        onChanged: (value) {
                          setState(() {}); // Trigger rebuild on text change
                        },
                        decoration: InputDecoration(
                          hintText: 'CVC',
                          hintStyle: const TextStyle(
                              color: AppColorConstant.appText2Color),
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30, right: 30, left: 30),
        child: ElevatedButton(
          onPressed: isButtonEnabled()
              ? () {
            // Add your save changes logic here
          }
              : null,
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              Size(
                MediaQuery.of(context).size.width * 0.9,
                60,
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              isButtonEnabled()
                  ? AppColorConstant.appScendoryColor
                  : Colors.grey,
            ),
          ),
          child: const Text(
            'Add Card',
            style: TextStyle(fontSize: 20, color: AppColorConstant.appTextColor),
          ),
        ),
      ),
    );
  }

  bool isButtonEnabled() {
    return cardNumberController.text.isNotEmpty &&
        cardHolderNameController.text.isNotEmpty &&
        expiredController.text.isNotEmpty &&
        cvcController.text.isNotEmpty;
  }
}
