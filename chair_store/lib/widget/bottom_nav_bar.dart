import 'package:chair_store/pages/home/home.dart';
import 'package:chair_store/pages/profile/profile.dart';
import 'package:chair_store/theme/theme.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
   final List  <Widget> _pages = [
     HomeScreen(),
      const Center(child: Text('Search')),
      ProfileScreen(),
    ];
    int _selectedIndex = 0;
   
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      body: _pages[_selectedIndex],
       bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: true,
          selectedItemColor: kBlueColor,
          unselectedItemColor: kGreyColor,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          backgroundColor: kWhiteColor,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
             
            });
          },
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                width: 24,
                color: _selectedIndex==0 ? kBlueColor :  Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon_wishlist.png', width: 24,
                color: _selectedIndex==1 ? kBlueColor :  Colors.black,
              ),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon_profile.png', width: 24,
               color: _selectedIndex==2 ? kBlueColor : Colors.black,
              
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}