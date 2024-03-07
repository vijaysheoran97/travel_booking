import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_string_constent.dart';

import '../../utils/app_color_constent.dart';
class LegalAndPoliciesPage extends StatefulWidget {
  const LegalAndPoliciesPage({super.key});

  @override
  State<LegalAndPoliciesPage> createState() => _LegalAndPoliciesPageState();
}

class _LegalAndPoliciesPageState extends State<LegalAndPoliciesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorConstant.appStatusBarColor,
        leading: const BackButton(
          color: AppColorConstant.appArowbackColor,
        ),
        title: const Text('Legal and Policies', style: TextStyle(fontWeight: FontWeight.w700)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Terms', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
              SizedBox(height: 10,),
              Text(AppStringConstant.appLegalText, textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18, color: AppColorConstant.appText2Color, fontWeight: FontWeight.w500),),
        
              Text('Changes to the Service and/or Terms:', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
              SizedBox(height: 10,),
              Text(AppStringConstant.appLegalText, textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18, color: AppColorConstant.appText2Color, fontWeight: FontWeight.w500),),
            ],
          ),
        ),
      ),
    );
  }
}
