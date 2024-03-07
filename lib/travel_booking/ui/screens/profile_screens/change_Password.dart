import 'package:flutter/material.dart';

import '../../utils/app_color_constent.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  bool isPasswordVisible = true;
  bool isConfirmPasswordVisible = true;
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    // Dispose of the focus node when it is no longer needed
    passwordFocusNode.dispose();
    super.dispose();
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
        title: const Text('Change Password',
            style: TextStyle(fontWeight: FontWeight.w700)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "The new password must be different from the current password",
              style: TextStyle(
                  color: AppColorConstant.appTextColorblack,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Password',
              style: TextStyle(
                  fontSize: 18, color: AppColorConstant.appTextColorblack54),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: passwordController,
              onChanged: (value) {
                setState(() {}); // Trigger rebuild on text change
              },
              obscureText: !isPasswordVisible,
              focusNode: passwordFocusNode,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                hintStyle: const TextStyle(
                    color: AppColorConstant.appText2Color),
                suffixIcon: IconButton(
                  icon: Icon(
                    isPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: AppColorConstant.appText2Color,
                  ),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                ),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            // Show the strength requirement message only when the password field is focused
            if (passwordFocusNode.hasFocus)
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 12.0, ),
                child: Text(
                  'Password must be 8 characters with a unique code like @!#',
                  style: TextStyle(
                    color: isStrongPassword(passwordController.text)
                        ? Colors.green
                        : AppColorConstant.appScendoryColor,
                  ),
                ),
              ),
            const SizedBox(height: 30),

            const Text(
              'Confirm Password',
              style: TextStyle(
                  fontSize: 18, color: AppColorConstant.appTextColorblack54),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: confirmPasswordController,
              onChanged: (value) {
                setState(() {}); // Trigger rebuild on text change
              },
              obscureText: !isConfirmPasswordVisible,
              decoration: InputDecoration(
                hintText: 'Confirm your password',
                hintStyle: const TextStyle(
                    color: AppColorConstant.appText2Color),
                suffixIcon: IconButton(
                  icon: Icon(
                    isConfirmPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: AppColorConstant.appText2Color,
                  ),
                  onPressed: () {
                    setState(() {
                      isConfirmPasswordVisible =
                      !isConfirmPasswordVisible;
                    });
                  },
                ),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            // Show the error message when passwords don't match
            if (passwordController.text.isNotEmpty &&
                confirmPasswordController.text.isNotEmpty &&
                passwordController.text != confirmPasswordController.text)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  '* Passwords do not match',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30, right: 30, left: 30),
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
                  : Colors.grey,
            ),
          ),
          child: const Text(
            'Submit',
            style:
            TextStyle(fontSize: 20, color: AppColorConstant.appTextColor),
          ),
        ),
      ),
    );
  }

  bool isButtonEnabled() {
    return passwordController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty &&
        passwordController.text == confirmPasswordController.text &&
        isStrongPassword(passwordController.text);
  }

  bool isStrongPassword(String password) {
    // Add your password strength logic here
    // For example, check if the password has at least 8 characters with a unique code like @$#
    return password.length >= 8 &&
        RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password);
  }
}
