import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/screens/login_screen.dart';
import 'package:travel_booking/travel_booking/ui/screens/otp_screen.dart';
import 'package:travel_booking/travel_booking/ui/screens/register_screen.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    bool _obscurePassword = true;
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(appBar: AppBar(
      title: Text('Sign Up',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
    ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text('Complet Your account',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26),)),
              SizedBox(height: screenSize.height * 0.04,),
              Text(
                'First Name',
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
                  hintText: 'Enter your first name',
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
              Text(
                'Last Name',
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
                  hintText: 'Enter your last name',
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
              Text(
                'Email Address',
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
                  hintText: 'Enter your email address',
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
              Text(
                'Password',
                style: TextStyle(
                    color: AppColorConstant.appTextColorblack54),
              ),
              SizedBox(
                height: screenSize.height * 0.01,
              ),
              TextFormField(
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black.withOpacity(0.09),
                  hintText: 'Enter your password',
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
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                    child: Icon(
                      _obscurePassword ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.03,
              ),
              Text(
                'Confirm Password',
                style: TextStyle(
                    color: AppColorConstant.appTextColorblack54),
              ),
              SizedBox(
                height: screenSize.height * 0.01,
              ),
              TextFormField(
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black.withOpacity(0.09),
                  hintText: 'Confirm your password',
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
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                    child: Icon(
                      _obscurePassword ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: screenSize.height * 0.04,
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
                        "Sign Up",
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
                height: screenSize.height * 0.03,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                    },
                    child: Text(
                      "Login",
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
