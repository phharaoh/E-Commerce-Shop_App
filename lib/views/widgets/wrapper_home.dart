import 'package:flutter/material.dart';
import 'package:e_commerce_app/helper/theme/app_color.dart';
import 'package:e_commerce_app/views/screens/shop_view.dart';
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
    const ShopView(),
    const FavoriteView(),
    const CardView(),
    const ProfileView(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: const Text('ShopSmart'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
        centerTitle: true,
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        currentIndex: _currentIndex,
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.iconColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.saved_search),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Wish List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
