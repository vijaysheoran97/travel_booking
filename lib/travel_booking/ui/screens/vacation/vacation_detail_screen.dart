import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/screens/vacation/checkout_vacation.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_string_constent.dart';

class VacationDetailScreen extends StatefulWidget {
  const VacationDetailScreen({super.key});

  @override
  State<VacationDetailScreen> createState() => _VacationDetailScreenState();
}

class _VacationDetailScreenState extends State<VacationDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: screenHeight * 0.50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppStringConstant.image1Path),
                fit: BoxFit.cover,
              ),
            ),
          ),
          AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back,
                  color: AppColorConstant.appTextColor),
            ),
            title: const Padding(
              padding: EdgeInsets.only(top: 12),
              child: Text(
                AppStringConstant.vacation,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 370,left: 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    AppStringConstant.tajMahal,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                  ),
                  const Text(
                    AppStringConstant.uttarPradesh,
                    style: TextStyle(color: AppColorConstant.appText2Color),
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                    AppStringConstant.details,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12,),
                  const Text(AppStringConstant.lorem),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: GestureDetector(
                          child: const Text(
                            AppStringConstant.tourGuide,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            height: 130,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                AppStringConstant.image3Path,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            height: 130,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                AppStringConstant.image4Path,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(AppStringConstant.personNo),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return CheckoutVacation();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: AppColorConstant.appScendoryColor,
                        ),
                        child:  Text(AppStringConstant.bookNow),
                      )

                    ],
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}