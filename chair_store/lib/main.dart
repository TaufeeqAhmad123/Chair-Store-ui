import 'package:chair_store/pages/home/detail_screen.dart';
import 'package:chair_store/pages/home/home.dart';
import 'package:chair_store/pages/profile/profile.dart';
import 'package:chair_store/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chair store',
      
      //home: const HomeScreen(),
      routes: {
        '/': (context) => const BottomNavBar(),
        '/home': (context) => const HomeScreen(),
        '/wish': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/detail': (context) => const DetailScreen(),
        // Add other routes here
      },
    );
  }
}

