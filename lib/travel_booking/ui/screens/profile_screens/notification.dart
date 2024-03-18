import 'package:flutter/material.dart';

import '../../utils/app_color_constent.dart';
class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool enablePaymentReminder = true;
  bool enableScheduleReminder = true;
  bool enableMessage = true;
  bool enableCall = true;

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
        title: const Text('Notifications',
            style: TextStyle(fontWeight: FontWeight.w700)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(

          height: screenHeight * 0.5,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),

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
                  'Payment Reminder',
                  style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: SizedBox(
                  width: 60.0,
                  child: Switch(
                    value: enablePaymentReminder,
                    onChanged: (value) {
                      setState(() {
                        enablePaymentReminder = value;
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
                  'Schedule Reminder',
                  style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: SizedBox(
                  width: 60.0,
                  child: Switch(
                    value: enableScheduleReminder,
                    onChanged: (value) {
                      setState(() {
                        enableScheduleReminder = value;
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
                  'Message',
                  style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: SizedBox(
                  width: 60.0,
                  child: Switch(
                    value: enableMessage,
                    onChanged: (value) {
                      setState(() {
                        enableMessage = value;
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
                  'Call',
                  style: TextStyle(color: AppColorConstant.appTextColorblack, fontSize: 20, fontWeight: FontWeight.w500),
                ),
                trailing: SizedBox(
                  width: 60.0,
                  child: Switch(
                    value: enableCall,
                    onChanged: (value) {
                      setState(() {
                        enableCall = value;
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
