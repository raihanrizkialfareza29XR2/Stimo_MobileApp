import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stimo/theme.dart';
import 'package:stimo/widgets/onboarding_item.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: [
                OnboardingItem(
                  imageUrl: 'assets/images/onboarding3.png',
                  title: 'Semua Jadi Lebih Cepat',
                  subtitle:
                      'Memangkas waktu segala macam bentuk\npengurusan dokumen, administrasi & kegiatan\nsehari-hari anda',
                ),
                OnboardingItem(
                  imageUrl: 'assets/images/onboarding2.png',
                  title: 'Satu Kota Dalam Genggaman',
                  subtitle:
                      'Dapatkan akses ke seluruh fitur unggulan\nyang dapat memenuhi seluruh kebutuhan\nharianmu hanya dalam satu genggaman',
                ),
                OnboardingItem(
                  imageUrl: 'assets/images/onboarding1.png',
                  title: 'Pola Hidup Lebih Baik',
                  subtitle:
                      'Jadikan pola hidupmu lebih efisien\ndan terstruktur tanpa banyaknya waktu\nyang terbuang',
                ),
              ],
              options: CarouselOptions(
                height: double.infinity,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                initialPage: currentIndex,
                onPageChanged: (index, _) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              carouselController: controller,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    controller.animateToPage(2);
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/statistik', (route) => false);
                  },
                  child: Text(
                    'SKIP',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            currentIndex == 0 ? blackColor : Color(0xffC7C9D9),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            currentIndex == 1 ? blackColor : Color(0xffC7C9D9),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            currentIndex == 2 ? blackColor : Color(0xffC7C9D9),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    if (currentIndex == 2) {
                      Navigator.pushNamed(context, '/statistik');
                    } else {
                      controller.nextPage();
                    }
                  },
                  child: Text(
                    'NEXT',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 29,
          ),
        ],
      ),
    );
  }
}
