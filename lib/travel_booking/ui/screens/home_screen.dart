import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Column(
        children: [
        ],
      ),
      appBar: AppBar(backgroundColor:AppColorConstant.appBarColor,actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.dark_mode_outlined,color: AppColorConstant.appTextColor,),),
        IconButton(onPressed: (){}, icon: const Icon(Icons.person_outline,color: AppColorConstant.appTextColor,),),
      ],),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
