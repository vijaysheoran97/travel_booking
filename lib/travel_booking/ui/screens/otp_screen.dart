import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/screens/register_screen.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';
import 'package:travel_booking/travel_booking/ui/widget/otp_text_fild.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {

  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(appBar: AppBar(
    ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Enter OTP',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26),),
              Text('We have just sent you 4 digit code via your email',
                style: TextStyle(color: AppColorConstant.appText2Color),),
              Text('example@gmail.com',
                style: TextStyle(color: AppColorConstant.appText2Color),),
              SizedBox(
                height: screenSize.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OTPTextField(controller: _controller1),
                  SizedBox(width: screenSize.width * 0.07),
                  OTPTextField(controller: _controller2),
                  SizedBox(width: screenSize.width * 0.07),
                  OTPTextField(controller: _controller3),
                  SizedBox(width: screenSize.width * 0.07),
                  OTPTextField(controller: _controller4),
                ],
              ),
              SizedBox(
                height: screenSize.height * 0.05,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen()));
                  },
                  child: Container(
                    width: 400,
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColorConstant.appScendoryColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          color: AppColorConstant.appTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.08,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't receive code?"),
                  TextButton(
                    onPressed: () {
                     // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                    },
                    child: Text(
                      "Resend Code",
                      style: TextStyle(
                          color: AppColorConstant.appScendoryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }
}
