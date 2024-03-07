import 'package:flutter/material.dart';

import '../../utils/app_color_constent.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  String selectedLanguage = ''; // Variable to store the selected language

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorConstant.appStatusBarColor,
        leading: const BackButton(
          color: AppColorConstant.appArowbackColor,
        ),
        title: const Text('Language', style: TextStyle(fontWeight: FontWeight.w700)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              _buildLanguageContainer('Suggested Languages', [
                'English',
                'English (UK)',
                'Bahasa Indonesia',
              ], 0.3),
              const SizedBox(height: 20),
              _buildLanguageContainer('Other Languages', [
                'Chineses',
                'Croation',
                'Czech',
                'Danish',
                'Filipino',
                'Finland',
              ], 0.56),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageContainer(String title, List<String> languages, double containerHeightFactor) {
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight = screenHeight * containerHeightFactor;

    return Container(
      height: containerHeight,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: AppColorConstant.appText2Color.shade300),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: AppColorConstant.appText2Color.shade800),
          ),
          const SizedBox(height: 10),
          Column(
            children: languages.map((language) {
              return Column(
                children: [
                  ListTile(
                    title: Text(
                      language,
                      style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    trailing: Radio(
                      value: language,
                      groupValue: selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          selectedLanguage = value.toString();
                        });
                      },
                      activeColor: AppColorConstant.appScendoryColor, // Set your desired color
                    ),
                  ),
                  if (languages.indexOf(language) < languages.length - 1)
                    Divider(
                      color: AppColorConstant.appText2Color.shade300,
                      thickness: 0.5,
                    ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
