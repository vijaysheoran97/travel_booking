import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/screens/forget_screen.dart';
import 'package:travel_booking/travel_booking/ui/screens/register_screen.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';
import 'package:travel_booking/travel_booking/ui/widget/navigation_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool _obscurePassword = true;
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        drawer: Drawer(
          child: Container(
            color: AppColorConstant.appScendoryColor,
            child: const Column(
              children: [
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: AppColorConstant.appScendoryColor,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.dark_mode_outlined,
                color: AppColorConstant.appTextColorblack,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_outline,
                color: AppColorConstant.appTextColorblack,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
                height: screenSize.height,
                width: screenSize.width,
                color: AppColorConstant.appScendoryColor,
                child: Column(
                  children: [
                    SizedBox(
                      height: screenSize.height * 0.03,
                    ),
                    const Text(
                      'Hi, Welcome Back!',
                      style: TextStyle(
                          color: AppColorConstant.appTextColor,
                          fontSize: 26,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 110.0),
              child: Container(
                height: screenSize.height * 1,
                width: screenSize.width,
                decoration: const BoxDecoration(
                  color: AppColorConstant.appTextColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'PhoneNo',
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
                            hintText: 'Enter your phone number',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
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
                          height: screenSize.height * 0.05,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: GestureDetector(
                            onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavigation()));
                            },
                            child: Container(
                              width: 400,
                              height: 60,
                              decoration: BoxDecoration(
                                color: AppColorConstant.appScendoryColor,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Center(
                                child: Text(
                                  "Continue with PhoneNo",
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
                          height: screenSize.height * 0.05,
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 40.0),
                                child: Divider(),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, right: 12),
                              child: Text(
                                "Or continue with",
                                style: TextStyle(
                                  color: AppColorConstant.appTextColorblack54
                                      .withOpacity(0.5),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 40.0),
                                child: Divider(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenSize.height * 0.05,
                        ),
                        Material(
                          child: Container(
                            width: screenSize.width,
                            height: screenSize.height * 0.082,
                            decoration: BoxDecoration(
                              color: AppColorConstant.appTextColor,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                // Add border here
                                color: Colors.grey, // Choose your border color
                                width: 1.0, // Choose your border width
                              ),
                            ),
                            child: TextButton.icon(
                              icon: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(
                                  'assets/images/final-google-logo.png',
                                  width: screenSize.width * 0.1,
                                  height: screenSize.height,
                                ),
                              ),
                              label: const Text(
                                "Continue with Google",
                                style: TextStyle(
                                    color: AppColorConstant.appTextColorblack54,
                                    fontSize: 16),
                              ),
                              onPressed: () {
                                // _googleSignInController.signInWithGoogle();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.02,
                        ),
                        Material(
                          child: Container(
                            width: screenSize.width,
                            height: screenSize.height * 0.082,
                            decoration: BoxDecoration(
                              color: AppColorConstant.appTextColor,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                // Add border here
                                color: Colors.grey, // Choose your border color
                                width: 1.0, // Choose your border width
                              ),
                            ),
                            child: TextButton.icon(
                              icon: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(
                                  'assets/images/gmail1.png',
                                  width: screenSize.width * 0.1,
                                  height: screenSize.height,
                                ),
                              ),
                              label: const Text(
                                "Continue with Email",
                                style: TextStyle(
                                    color: AppColorConstant.appTextColorblack54,
                                    fontSize: 16),
                              ),
                              onPressed: () {
                                // _googleSignInController.signInWithGoogle();
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.01,
                        ),
                        Row(
                          children: [const Spacer(),
                            GestureDetector(
                              onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgetScreen()));
                              },
                                child: const Text(
                              "Forget Password?",
                              style: TextStyle(
                                  color: AppColorConstant.appScendoryColor),
                            )),
                          ],
                        ),
                        SizedBox(
                          height: screenSize.height * 0.03,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account?"),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterScreen()));
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: AppColorConstant.appScendoryColor),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
