import 'package:flutter/material.dart';

import '../../utils/app_color_constent.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({Key? key}) : super(key: key);

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  String? selectedCountry; // Change to nullable type
  String? selectedCity; // Change to nullable type
  String? selectedState; // Change to nullable type
  TextEditingController fullNameController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  // List of country names (replace with your actual list)
  List<String> countryList = [
    'India',
    'USA',
    'United Kingdom',
    'Pakistan',
    'Canada',
    'Australia',
    // Add more countries as needed
  ];

  List<String> cityList = [
    'Gorakhpur',
    'New York',
    'London',
    'Karachi',
    'Ottawa',
    'Oslo',
    'Melbourne',
    // Add more countries as needed
  ];

  List<String> stateList = [
    'Uttar Pradesh',
    'New Delhi',
    'Punjab',
    'Chicago',
    'Anchorage',
    'Detroit',
    'Louisville',
    // Add more countries as needed
  ];

  bool isButtonEnabled() {
    return fullNameController.text.isNotEmpty &&
        zipCodeController.text.isNotEmpty &&
        addressController.text.isNotEmpty &&
        selectedCountry != null &&
        selectedCity != null &&
        selectedState != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorConstant.appStatusBarColor,
        leading: const BackButton(
          color: AppColorConstant.appArowbackColor,
        ),
        title: const Text('New Address',
            style: TextStyle(fontWeight: FontWeight.w700)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Full Name',
                style: TextStyle(
                    fontSize: 18, color: AppColorConstant.appTextColorblack54),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: fullNameController,
                decoration: InputDecoration(
                  hintText: 'Enter Full Name/ Home/ Office',
                  hintStyle: const TextStyle(color: AppColorConstant.appText2Color),
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
                'Country',
                style: TextStyle(
                    fontSize: 18, color: AppColorConstant.appTextColorblack54),
              ),
              const SizedBox(height: 5),
              Container(
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                  child: DropdownButton<String>(
                    value: selectedCountry,
                    hint: const Text(
                      'Select Country',
                      style: TextStyle(color: AppColorConstant.appText2Color),
                    ),
                    isExpanded: true,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCountry = newValue;
                      });
                    },
                    items: countryList.map((String country) {
                      return DropdownMenuItem<String>(
                        value: country,
                        child: Text(country),
                      );
                    }).toList(),
                    underline: const SizedBox(), // Remove the default underline
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'City',
                style: TextStyle(
                    fontSize: 18, color: AppColorConstant.appTextColorblack54),
              ),
              const SizedBox(height: 5),
              Container(
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                  child: DropdownButton<String>(
                    value: selectedCity,
                    hint: const Text(
                      'Select City',
                      style: TextStyle(color: AppColorConstant.appText2Color),
                    ),
                    isExpanded: true,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCity = newValue;
                      });
                    },
                    items: cityList.map((String city) {
                      return DropdownMenuItem<String>(
                        value: city,
                        child: Text(city),
                      );
                    }).toList(),
                    underline: const SizedBox(), // Remove the default underline
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'State',
                style: TextStyle(
                    fontSize: 18, color: AppColorConstant.appTextColorblack54),
              ),
              const SizedBox(height: 5),
              Container(
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                  child: DropdownButton<String>(
                    value: selectedState,
                    hint: const Text(
                      'Select State',
                      style: TextStyle(color: AppColorConstant.appText2Color),
                    ),
                    isExpanded: true,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedState = newValue;
                      });
                    },
                    items: stateList.map((String state) {
                      return DropdownMenuItem<String>(
                        value: state,
                        child: Text(state),
                      );
                    }).toList(),
                    underline: const SizedBox(), // Remove the default underline
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Zip Code',
                style: TextStyle(
                    fontSize: 18, color: AppColorConstant.appTextColorblack54),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: zipCodeController,
                decoration: InputDecoration(
                  hintText: 'Enter Zip Code',
                  hintStyle: const TextStyle(color: AppColorConstant.appText2Color),
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
                'Detail Address',
                style: TextStyle(
                    fontSize: 18, color: AppColorConstant.appTextColorblack54),
              ),
              const SizedBox(height: 5),
              TextField(
                controller: addressController,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: 'Enter Your Address',
                  hintStyle: const TextStyle(color: AppColorConstant.appText2Color),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Center(
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
                          : AppColorConstant.appText2Color,
                    ),
                  ),
                  child: const Text(
                    'Save Address',
                    style: TextStyle(
                        fontSize: 20, color: AppColorConstant.appTextColor),
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
