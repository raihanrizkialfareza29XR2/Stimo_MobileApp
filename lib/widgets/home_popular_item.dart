import 'package:flutter/material.dart';
import 'package:stimo/theme.dart';

class HomePopularItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int price;
  final bool isWishlist;

  const HomePopularItem({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.isWishlist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail');
      },
      child: Container(
        height: 300,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.only(left: 24),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 180,
                decoration: BoxDecoration(
                  color: blackColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    imageUrl,
                    width: 160,
                  ),
                ),
              ),
              Container(
                width: 200,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$$price',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semiBold,
                          ),
                        ),
                        Image.asset(
                          isWishlist
                              ? 'assets/images/Severity.png'
                              : 'assets/images/Severity.png',
                          width: 44,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
