import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/app_color_constent.dart';
import 'add_Address.dart';

class AddNewCreditCardPage extends StatefulWidget {
  const AddNewCreditCardPage({Key? key}) : super(key: key);

  @override
  State<AddNewCreditCardPage> createState() => _AddNewCreditCardPageState();
}

class _AddNewCreditCardPageState extends State<AddNewCreditCardPage> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cardHolderNameController = TextEditingController();
  TextEditingController expiredController = TextEditingController();
  TextEditingController cvcController = TextEditingController();

  bool isSaveCardEnabled = false;
  bool isCardRestrictionEnabled = false;
  bool isBypassRestrictionEnabled = false;

  String selectedAmount = '300\$'; // Initial selected amount

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColorConstant.appStatusBarColor,
          leading: const BackButton(
            color: AppColorConstant.appArowbackColor,
          ),
          title: const Text(
            'Add new Credit Card',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          bottom: const TabBar(
            labelColor: AppColorConstant
                .appScendoryColor, // Color for the selected tab's label
            unselectedLabelColor: AppColorConstant
                .appText2Color, // Color for unselected tab's label
            indicatorColor: AppColorConstant
                .appScendoryColor, // Color for the tab indicator line
            indicatorSize: TabBarIndicatorSize
                .label, // Size for the tab indicator (you can use 'TabBarIndicatorSize.label' for indicator size to match label size)
            tabs: [
              Tab(text: 'Card information'),
              Tab(text: 'Card Settings'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildAddCreditCardTab(),
            buildCardSettingsTab(),
          ],
        ),
      ),
    );
  }

  Widget buildAddCreditCardTab() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Card Information',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Holder Name',
                  style: TextStyle(
                      fontSize: 18,
                      color: AppColorConstant.appTextColorblack54),
                ),
                const SizedBox(height: 5),
                TextField(
                  controller: cardHolderNameController,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter Holder Name',
                    hintStyle:
                        const TextStyle(color: AppColorConstant.appText2Color),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0), // Adjust the size here
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Card Number',
              style: TextStyle(
                  fontSize: 18, color: AppColorConstant.appTextColorblack54),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: cardNumberController,
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                hintText: 'Enter Card Number',
                hintStyle:
                    const TextStyle(color: AppColorConstant.appText2Color),
                contentPadding: EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0), // Adjust the size here
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
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
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          hintText: 'MM/YY',
                          hintStyle: const TextStyle(
                              color: AppColorConstant.appText2Color),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 20.0), // Adjust the size here
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
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
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          hintText: 'CVC',
                          hintStyle: const TextStyle(
                              color: AppColorConstant.appText2Color),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 20.0), // Adjust the size here
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: isButtonEnabled()
                  ? () {
                      // Add your save changes logic here
                    }
                  : null,
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(
                    MediaQuery.of(context).size.width * 0.9,
                    50,
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
                style: TextStyle(
                    fontSize: 20, color: AppColorConstant.appTextColor),
              ),
            ),
          ],
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

  Widget buildCardSettingsTab() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        children: [
          ListTile(
            tileColor: AppColorConstant.appText2Color.shade100,
            title: const Text(
              'Save this card',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            trailing: Switch(
              value: isSaveCardEnabled,
              onChanged: (value) {
                setState(() {
                  isSaveCardEnabled = value;
                });
              },
              inactiveTrackColor: AppColorConstant.appText2Color,
              inactiveThumbColor: AppColorConstant.appTextColor,
              trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
              activeTrackColor: AppColorConstant.appScendoryColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const AddAddressPage()));
            },
            tileColor: AppColorConstant.appText2Color.shade100,
            title: const Text(
              'Add specific shipping address',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            trailing: const Icon(
              Icons.add_circle_outline,
              color: AppColorConstant.appScendoryColor,
              size: 27,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            tileColor: AppColorConstant.appText2Color.shade100,
            title: const Text(
              'Card restrictions',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              'Enable this feature to put restrictions on your credit card.',
              style: TextStyle(color: AppColorConstant.appText2Color),
            ),
            trailing: Switch(
              value: isCardRestrictionEnabled,
              onChanged: (value) {
                setState(() {
                  isCardRestrictionEnabled = value;
                });
              },
              inactiveTrackColor: AppColorConstant.appText2Color,
              inactiveThumbColor: AppColorConstant.appTextColor,
              trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
              activeTrackColor: AppColorConstant.appScendoryColor,
            ),
          ),
          if (isCardRestrictionEnabled) // Show these ListTiles only when card restrictions are enabled
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  tileColor: AppColorConstant.appText2Color.shade100,
                  title: const Text(
                    'Restriction amount',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  onTap: () {
                    setRestrictedAmount(context);
                  },
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                    Text(selectedAmount,
                        style: TextStyle(fontSize: 16, letterSpacing: 1.0)),
                    const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColorConstant.appScendoryColor,
                      size: 27,
                    ),
                  ]),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  tileColor: AppColorConstant.appText2Color.shade100,
                  title: const Text(
                    'Bypass restriction',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(
                    'Enable Bypass restriction to pay higher amount orignally set in restriction amount',
                    style: TextStyle(color: AppColorConstant.appText2Color),
                  ),
                  trailing: Switch(
                    value: isBypassRestrictionEnabled,
                    onChanged: (value) {
                      setState(() {
                        isBypassRestrictionEnabled = value;
                      });
                    },
                    inactiveTrackColor: AppColorConstant.appText2Color,
                    inactiveThumbColor: AppColorConstant.appTextColor,
                    trackOutlineColor:
                        MaterialStateProperty.all(Colors.transparent),
                    activeTrackColor: AppColorConstant.appScendoryColor,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  void setRestrictedAmount(BuildContext context) async {
    final String? selectedValue = await showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(10, 400, 0, 0),
      items: <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: '300',
          child: Text('300\$'),
        ),
        const PopupMenuItem<String>(
          value: '500',
          child: Text('500\$'),
        ),
        const PopupMenuItem<String>(
          value: '1000',
          child: Text('1000\$'),
        ),
      ],
    );

    if (selectedValue != null) {
      setState(() {
        selectedAmount = '$selectedValue\$'; // Update the selected amount
      });
    }
  }
}
