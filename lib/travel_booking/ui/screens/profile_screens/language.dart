
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColorConstant.appText2Color.shade300),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Suggested Languages', style: TextStyle(color: AppColorConstant.appText2Color),),
                    const SizedBox(height: 10,),
                    ListTile(
                      title: const Text('English (UK)', style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),),
                      trailing: Radio(
                        value: 'English (UK)',
                        groupValue: selectedLanguage,
                        onChanged: (value) {
                          setState(() {
                            selectedLanguage = value.toString();
                          });
                        },
                        activeColor: AppColorConstant.appScendoryColor,
                      ),
                    ),
                    Divider(
                      color: AppColorConstant.appText2Color.shade300,
                      thickness: 0.5,
                    ),
                    ListTile(
                      title: const Text('English', style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),),
                      trailing: Radio(
                        value: 'English',
                        groupValue: selectedLanguage,
                        onChanged: (value) {
                          setState(() {
                            selectedLanguage = value.toString();
                          });
                        },
                        activeColor: AppColorConstant.appScendoryColor,
                      ),
                    ),
                    Divider(
                      color: AppColorConstant.appText2Color.shade300,
                      thickness: 0.5,
                    ),
                    ListTile(
                      title: const Text('Bahasa Indonesia', style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),),
                      trailing: Radio(
                        value: 'Bahasa',
                        groupValue: selectedLanguage,
                        onChanged: (value) {
                          setState(() {
                            selectedLanguage = value.toString();
                          });
                        },
                        activeColor: AppColorConstant.appScendoryColor,
                      ),
                    ),
                  ],
                ),
              ),
          const SizedBox(height: 30,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColorConstant.appText2Color.shade300),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Other Languages', style: TextStyle(color: AppColorConstant.appText2Color),),
                    const SizedBox(height: 10,),
                    ListTile(
                      title: const Text('Chineses', style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),),
                      trailing: Radio(
                        value: 'Chineses',
                        groupValue: selectedLanguage,
                        onChanged: (value) {
                          setState(() {
                            selectedLanguage = value.toString();
                          });
                        },
                        activeColor: AppColorConstant.appScendoryColor,
                      ),
                    ),
                    Divider(
                      color: AppColorConstant.appText2Color.shade300,
                      thickness: 0.5,
                    ),
                    ListTile(
                      title: const Text('Croatian', style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),),
                      trailing: Radio(
                        value: 'Croatian',
                        groupValue: selectedLanguage,
                        onChanged: (value) {
                          setState(() {
                            selectedLanguage = value.toString();
                          });
                        },
                        activeColor: AppColorConstant.appScendoryColor,
                      ),
                    ),
                    Divider(
                      color: AppColorConstant.appText2Color.shade300,
                      thickness: 0.5,
                    ),
                    ListTile(
                      title: const Text('Czech', style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),),
                      trailing: Radio(
                        value: 'Czech',
                        groupValue: selectedLanguage,
                        onChanged: (value) {
                          setState(() {
                            selectedLanguage = value.toString();
                          });
                        },
                        activeColor: AppColorConstant.appScendoryColor,
                      ),
                    ),
                    Divider(
                      color: AppColorConstant.appText2Color.shade300,
                      thickness: 0.5,
                    ),
                    ListTile(
                      title: const Text('Danish', style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),),
                      trailing: Radio(
                        value: 'Danish',
                        groupValue: selectedLanguage,
                        onChanged: (value) {
                          setState(() {
                            selectedLanguage = value.toString();
                          });
                        },
                        activeColor: AppColorConstant.appScendoryColor,
                      ),
                    ),
                    Divider(
                      color: AppColorConstant.appText2Color.shade300,
                      thickness: 0.5,
                    ),
                    ListTile(
                      title: const Text('Filipino', style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),),
                      trailing: Radio(
                        value: 'Filipino',
                        groupValue: selectedLanguage,
                        onChanged: (value) {
                          setState(() {
                            selectedLanguage = value.toString();
                          });
                        },
                        activeColor: AppColorConstant.appScendoryColor,
                      ),
                    ),


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

                    ListTile(
                      title: const Text('Finland', style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),),
                      trailing: Radio(
                        value: 'Finland',
                        groupValue: selectedLanguage,
                        onChanged: (value) {
                          setState(() {
                            selectedLanguage = value.toString();
                          });
                        },
                        activeColor: AppColorConstant.appScendoryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
