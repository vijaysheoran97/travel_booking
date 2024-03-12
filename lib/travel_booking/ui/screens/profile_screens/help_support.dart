import 'package:flutter/material.dart';

import '../../utils/app_color_constent.dart';

class HelpAndSupportPage extends StatefulWidget {
  const HelpAndSupportPage({Key? key}) : super(key: key);

  @override
  State<HelpAndSupportPage> createState() => _HelpAndSupportPageState();
}

class _HelpAndSupportPageState extends State<HelpAndSupportPage> {
  List<Item> _data = generateItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorConstant.appStatusBarColor,
        leading: const BackButton(
          color: AppColorConstant.appArowbackColor,
        ),
        title: const Text('Help and Support', style: TextStyle(fontWeight: FontWeight.w700)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_rounded, color: AppColorConstant.appText2Color,),
                hintText: 'Search...',
                hintStyle: const TextStyle(color: AppColorConstant.appText2Color),
                suffixIcon: Icon(Icons.filter_list),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              child: ListView.separated(
                itemCount: _data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ExpansionTile(
                        title: Text(
                          _data[index].title,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(_data[index].value),
                          ),
                        ],
                      ),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) => Divider(
                  color: AppColorConstant.appText2Color.shade300,
                  thickness: 0.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Item {
  Item({
    required this.title,
    required this.value,
  });

  String title;
  String value;
}

List<Item> generateItems() {
  return [
    Item(
      title: 'Customer Support',
      value: 'Contact us for any issues or questions regarding your account or services.',
    ),
    Item(
      title: 'Billing Inquiries',
      value: 'If you have questions about your bills or payments, we are here to assist you.',
    ),
    Item(
      title: 'Technical Support',
      value: 'Facing technical difficulties? Reach out to our technical support team for assistance.',
    ),
    Item(
      title: 'Feedback and Suggestions',
      value: 'We value your feedback! Share your thoughts and suggestions with us.',
    ),
    Item(
      title: 'FAQs',
      value: 'Check our Frequently Asked Questions section for quick answers to common queries.',
    ),
  ];
}
