import 'package:flutter/material.dart';
import 'package:e_commerce_app/views/screens/card_view.dart';
import 'package:e_commerce_app/views/screens/home_view.dart';
import 'package:e_commerce_app/views/screens/profile_view.dart';
import 'package:e_commerce_app/views/screens/favourite_view.dart';

class WrapperHome extends StatefulWidget {
  const WrapperHome({super.key});
  @override
  State<WrapperHome> createState() => _WrapperHomeState();
}

class _WrapperHomeState extends State<WrapperHome> {
  List<Widget> screens = [
    const HomeView(),
    const FavoriteView(),
    const CardView(),

    const ProfileView(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        currentIndex: _currentIndex,
        backgroundColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.grey),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment, color: Colors.grey),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
