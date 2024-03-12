// import 'package:flutter/material.dart';
// import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';
// import 'package:travel_booking/travel_booking/ui/utils/app_string_constent.dart';
//
// class CheckoutVacation extends StatefulWidget {
//   const CheckoutVacation({super.key});
//
//   @override
//   State<CheckoutVacation> createState() => _CheckoutVacationState();
// }
//
// class _CheckoutVacationState extends State<CheckoutVacation> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Text(AppStringConstant.checkoutVacation),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(AppStringConstant.customerInfo),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.01,
//                 ),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(AppStringConstant.name),
//                     Text(AppStringConstant.andyLexian),
//                   ],
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.01,
//                 ),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(AppStringConstant.email),
//                     Text(AppStringConstant.example),
//                   ],
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.02,
//                 ),
//                 const Text(
//                   AppStringConstant.orderInfo,
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 ListTile(
//                   leading: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     height: 80,
//                     width: 80,
//                     child: Image.asset(
//                        AppStringConstant.image3Path,
//                         fit: BoxFit.fill),
//                   ),
//                   title: const Text(AppStringConstant.tajMahal),
//                   subtitle: Column(
//                     children: [
//                       const Row(
//                         children: [
//                           Icon(
//                             Icons.location_pin,
//                             size: 14,
//                           ),
//                           Text(AppStringConstant.uttarPradesh)
//                         ],
//                       ),
//                       SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.01,
//                       ),
//                       const Row(
//                         children: [
//                           Icon(
//                             Icons.star,
//                             size: 14,
//                             color: AppColorConstant.appButtonStyle,
//                           ),
//                           Text(AppStringConstant.four)
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Text(AppStringConstant.dateVisit),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.01,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Container(
//                     width: MediaQuery.of(context).size.width * 0.8,
//                     decoration: BoxDecoration(
//                       color: AppColorConstant.appTextColorblacks,
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(right: 8.0, left: 8),
//                       child: TextFormField(
//                         decoration: const InputDecoration(
//                           hintText: AppStringConstant.date,
//                           border: InputBorder.none,
//                           suffixIcon: Icon(Icons.date_range),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//
//
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.01,
//                 ),
//                 const Text(AppStringConstant.numberOfPeople),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.01,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       color: AppColorConstant.appTextColorblacks,
//                       borderRadius: BorderRadius.circular(12)),
//                   child: Padding(
//                     padding: const EdgeInsets.only(right: 8.0, left: 8),
//                     child: TextFormField(
//                       decoration: const InputDecoration(
//                         hintText: AppStringConstant.numberOfPeople,
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.02,
//                 ),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(AppStringConstant.price),
//                     Text(AppStringConstant.personNo),
//                   ],
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.01,
//                 ),
//                 const Divider(),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.01,
//                 ),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(AppStringConstant.total),
//                     Text(AppStringConstant.person160),
//                   ],
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.01,
//                 ),
//                 const Text(AppStringConstant.promoCode),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.01,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       color: Colors.black12,
//                       borderRadius: BorderRadius.circular(12)),
//                   child: Padding(
//                     padding: const EdgeInsets.only(right: 8.0, left: 8),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         const Text(AppStringConstant.inputCode),
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             primary:AppColorConstant.appScendoryColor,
//                             minimumSize: const Size(100, 30),
//                           ),
//                           child: const Text(
//                             AppStringConstant.apply,
//                             style: TextStyle(
//                               color: AppColorConstant.appTextColor,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_string_constent.dart';

class CheckoutVacation extends StatefulWidget {
  const CheckoutVacation({super.key});

  @override
  State<CheckoutVacation> createState() => _CheckoutVacationState();
}

class _CheckoutVacationState extends State<CheckoutVacation> {
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2015),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppStringConstant.checkoutVacation),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(AppStringConstant.customerInfo),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStringConstant.name),
                  Text(AppStringConstant.andyLexian),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStringConstant.email),
                  Text(AppStringConstant.example),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                AppStringConstant.orderInfo,
                style: TextStyle(fontSize: 20),
              ),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 80,
                  width: 80,
                  child: Image.asset(
                    AppStringConstant.image3Path,
                    fit: BoxFit.fill,
                  ),
                ),
                title: const Text(AppStringConstant.tajMahal),
                subtitle: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 14,
                        ),
                        Text(AppStringConstant.uttarPradesh)
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 14,
                          color: AppColorConstant.appButtonStyle,
                        ),
                        Text(AppStringConstant.four)
                      ],
                    ),
                  ],
                ),
              ),
              const Text(AppStringConstant.dateVisit),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_selectedDate.toString().split(' ')[0]),
                    const Icon(Icons.date_range),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Text(AppStringConstant.numberOfPeople),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColorConstant.appTextColorblacks,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: AppStringConstant.numberOfPeople,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStringConstant.price),
                  Text(AppStringConstant.personNo),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Divider(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStringConstant.total),
                  Text(AppStringConstant.person160),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Text(AppStringConstant.promoCode),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(AppStringConstant.inputCode),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: AppColorConstant.appScendoryColor,
                          minimumSize: const Size(100, 30),
                        ),
                        child: const Text(
                          AppStringConstant.apply,
                          style: TextStyle(
                            color: AppColorConstant.appTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStringConstant.promo),
                  Text(AppStringConstant.person10),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStringConstant.totalPay),
                  Text(AppStringConstant.person150),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: AppColorConstant.appScendoryColor,
                  minimumSize: const Size(double.infinity, 40),
                ),
                child: const Text(
                  AppStringConstant.apply,
                  style: TextStyle(
                    color: AppColorConstant.appTextColor,
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
