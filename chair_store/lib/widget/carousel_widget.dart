import 'package:chair_store/theme/theme.dart';
import 'package:flutter/material.dart';

class carouselWidget extends StatelessWidget {
  final String title, subtitle, imageUrl;
  const carouselWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      width: MediaQuery.of(context).size.width - (2 * 24),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                
                height: 210,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 170,
                      
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            subtitle,
                            style: greyTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            
          ),
          Padding(
            padding:  EdgeInsets.only(left: 20,top: 10),
            child: Image.asset(imageUrl, height: 120),
          ),
        ],
      ),
    );
  }
}
