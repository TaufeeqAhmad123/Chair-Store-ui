import 'package:carousel_slider/carousel_slider.dart';
import 'package:chair_store/theme/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/logo_dark.png', width: 53),
                const SizedBox(width: 8),
                Text(
                  'Space',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
                const Spacer(),
                Image.asset('assets/icon_cart.png', width: 30),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: kGreyColor),
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Text(
                    'search Furniture',
                    style: blackAccentTextStyle.copyWith(fontSize: 16),
                  ),
                  const Spacer(),
                  Image.asset('assets/icon_search.png', width: 24),
                ],
              ),
            ),
            const SizedBox(height: 20),
            rowWidget(title: 'Category', sub: 'Show all',),
            const SizedBox(height: 20),
            CarouselSlider(
              items: [
                carouselWidget(
                  title: 'Chair',
                  subtitle: 'Best Chair for you',
                  imageUrl: 'assets/image_product_category1.png',
                ),
                carouselWidget(
                  title: 'Chair',
                  subtitle: 'Best Chair for you',
                  imageUrl: 'assets/image_product_category2.png',
                ),
                carouselWidget(
                  title: 'Chair',
                  subtitle: 'Best Chair for you',
                  imageUrl: 'assets/image_product_category3.png',
                ),
              ],
              options: CarouselOptions(
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 700),
                height: 140,
                enableInfiniteScroll: true,
                viewportFraction: 1,
                onPageChanged: (index,_){
                  setState(() {
                    currentIndex = index;
                  });
                }
              ),
            ),
        Wrap(
          direction: Axis.horizontal,
          children:   List<Widget>.generate(3, (index) {
            return Container(
              height: 10,
              width: 10,
              margin: const EdgeInsets.only(top: 20, left: 4, right: 4),
              decoration: BoxDecoration(
                color:index==currentIndex ? kBlackAccentColor : kBlackAccentColor.withOpacity( 0.2),
                shape: BoxShape.circle,
              ),
            );
          }),
        ),
        SizedBox(height: 20),
        rowWidget(title: 'Popular', sub: 'Show all',),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              homePopularItem(
                imageUrl: 'assets/image_product_popular1.png',
                title: 'Chair',
                Price: ' 34',
              ),
              const SizedBox(width: 20),
              homePopularItem(
                imageUrl: 'assets/image_product_popular2.png',
                title: 'Chair',
                Price: ' 22',
              ),
              const SizedBox(width: 20),
              homePopularItem(
                imageUrl: 'assets/image_product_popular1.png',
                title: 'Chair',
                Price: ' 30',
              ),
              const SizedBox(width: 20),
              homePopularItem(
                imageUrl: 'assets/image_product_popular1.png',
                title: 'Chair',
                Price: ' 20',
              ),
            ],
          ),)
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: kWhiteColor,
          onTap: (index) {
            if (index == 0) {
              Navigator.pushNamed(context, '/home');
            } else if (index == 1) {
              Navigator.pushNamed(context, '/wish');
            } else if (index == 2) {
              Navigator.pushNamed(context, '/profile');
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                width: 24,
                color: kBlueColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon_wishlist.png', width: 24),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon_profile.png', width: 24),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

class homePopularItem extends StatelessWidget {
  final String imageUrl, title, Price;
  const homePopularItem({
    super.key, required this.imageUrl, required this.title, required this.Price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height: 300,width: 200,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
    decoration: BoxDecoration(
      color: kWhiteGreyColor,
      borderRadius: BorderRadius.circular(20),),
      child:Column(
        children: [
         Container(
            width: 180,
            height: 160,
            decoration: BoxDecoration(
              color: kWhiteGreyColor,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(10),
              ),
            ),
            child: Center(
              child: Image.asset(
                imageUrl,
                width: 140,
              ),
            ),
          ),
      Container(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
    
          ),
          Row(
            children: [
              Text(
                "\$$Price",
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              const Spacer(),
              Align(
               // alignment: Alignment.centerRight,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                     // bottomLeft: Radius.circular(20),
                     bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/wish');
                    },
                    icon: Image.asset('assets/icon_wishlist.png', width: 24,color: Colors.white,),
                  ),
                ),
              ),
            ],
    
    
          )
          ],
        ),
      )
        ],
      ),
    );
  }
}

class rowWidget extends StatelessWidget {
  final String title,sub;
  const rowWidget({
    super.key, required this.title, required this.sub,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
        const Spacer(),
        Text(sub, style: blackTextStyle.copyWith(fontSize: 12)),
      ],
    );
  }
}

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
            child: Positioned(
              right: 100,
              child: Container(
                height: 102,
                child: Row(
                  children: [
                    SizedBox(
                      width: 150,
                      
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
          ),
          Image.asset(imageUrl, height: 120),
        ],
      ),
    );
  }
}
