import 'package:flutter/material.dart';

class OTPTextField extends StatelessWidget {
  final TextEditingController controller;

  const OTPTextField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24),
        decoration: InputDecoration(
          counterText: '', // Remove the counter text
          border: InputBorder.none,
        ),
      ),
    );
  }
}
