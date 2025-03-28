import 'package:chair_store/theme/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: kBlackColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 98,
              height: 82,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'splash.jpg',
                    
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'Space',
              style: whiteTextStyle.copyWith(
                fontSize: 36,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}