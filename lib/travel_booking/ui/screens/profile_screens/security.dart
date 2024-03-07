import 'package:flutter/material.dart';

import '../../utils/app_color_constent.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  bool enableFaceId = true;
  bool enableRememberPassword = true;
  bool enableTouchId = true;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorConstant.appStatusBarColor,
        leading: const BackButton(
          color: AppColorConstant.appArowbackColor,
        ),
        title: const Text('Security',
            style: TextStyle(fontWeight: FontWeight.w700)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          height: screenHeight * 0.3, // Set container height based on screen height
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: AppColorConstant.appText2Color.shade300),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Messages Notifications',
                style: TextStyle(color: AppColorConstant.appText2Color.shade800),
              ),
              SizedBox(height: 10,),
              ListTile(
                title: Text(
                  'Face ID',
                  style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: SizedBox(
                  width: 60.0,
                  child: Switch(
                    value: enableFaceId,
                    onChanged: (value) {
                      setState(() {
                        enableFaceId = value;
                      });
                    },
                    thumbColor: MaterialStateProperty.all(AppColorConstant.appTextColor),
                    trackColor: MaterialStateProperty.all(AppColorConstant.appScendoryColor),
                    trackOutlineColor: MaterialStateProperty.all(AppColorConstant.appScendoryColor),
                  ),
                ),
              ),
              Divider(
                color: AppColorConstant.appText2Color.shade300,
                thickness: 0.5,
              ),
              ListTile(
                title: Text(
                  'Remember Password',
                  style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: SizedBox(
                  width: 60.0,
                  child: Switch(
                    value: enableRememberPassword,
                    onChanged: (value) {
                      setState(() {
                enableRememberPassword = value;
                      });
                    },
                    thumbColor: MaterialStateProperty.all(AppColorConstant.appTextColor),
                    trackColor: MaterialStateProperty.all(AppColorConstant.appScendoryColor),
                    trackOutlineColor: MaterialStateProperty.all(AppColorConstant.appScendoryColor),
                  ),
                ),
              ),
              Divider(
                color: AppColorConstant.appText2Color.shade300,
                thickness: 0.5,
              ),
              ListTile(
                title: Text(
                  'Touch ID',
                  style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: SizedBox(
                  width: 60.0,
                  child: Switch(
                    value: enableTouchId,
                    onChanged: (value) {
                      setState(() {
                        enableTouchId = value;
                      });
                    },
                    thumbColor: MaterialStateProperty.all(AppColorConstant.appTextColor),
                    trackColor: MaterialStateProperty.all(AppColorConstant.appScendoryColor),
                    trackOutlineColor: MaterialStateProperty.all(AppColorConstant.appScendoryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
