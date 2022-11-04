import 'package:flutter/material.dart';
import 'package:stimo/theme.dart';

class OnboardingItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const OnboardingItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 99,
        ),
        Image.asset(
          imageUrl,
          width: double.infinity,
        ),
        SizedBox(
          height: 78,
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 25,
            fontWeight: semiBold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          subtitle,
          style: grayTextStyle.copyWith(
            fontSize: 15,
            fontWeight: regular,
            letterSpacing: 0.05,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
