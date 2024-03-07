import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/screens/home_screen.dart';
import 'package:travel_booking/travel_booking/ui/screens/my_booked_screen.dart';
import 'package:travel_booking/travel_booking/ui/screens/my_wishlist_screen.dart';
import 'package:travel_booking/travel_booking/ui/screens/profile_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<BottomNavigation> {
  final List<Widget> _tabs = [
    const HomeScreen(),
    const MyBookedScreen(),
    const MyWishlistScreen(),
    const ProfileScreen(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[currentIndex],
      bottomNavigationBar:
          BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        showUnselectedLabels: true,
        enableFeedback: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black54,
        elevation: 8,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_rounded),
            label: 'MyBooked',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'MyWishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
