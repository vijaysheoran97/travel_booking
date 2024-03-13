import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenSize.height * 0.04,),
              Text(
                'Email/PhoneNo',
                style: TextStyle(
                    color: AppColorConstant.appTextColorblack54),
              ),
              SizedBox(
                height: screenSize.height * 0.01,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black.withOpacity(0.09),
                  hintText: 'Enter your email address/PhoneNo',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    // Adjust the vertical padding as needed
                    horizontal:
                    15.0, // Adjust the horizontal padding as needed
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.03,
              ),



              SizedBox(
                height: screenSize.height * 0.04,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                   // Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen()));
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
                        "Forget",
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
            ],
          ),
        ),

      ),
    );
  }
}
