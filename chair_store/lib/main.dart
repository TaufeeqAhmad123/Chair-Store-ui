import 'package:chair_store/pages/home/home.dart';
import 'package:chair_store/pages/home/profile/profile.dart';
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
      
      home: const HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/wish': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        // Add other routes here
      },
    );
  }
}

