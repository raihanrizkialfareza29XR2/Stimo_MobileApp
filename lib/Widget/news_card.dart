import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 430,
        left: 22,
        right: 24,
      ),
      width: 206,
      height: 124,
      decoration: BoxDecoration(
        color: Color(0xffD4E5FF),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Image.asset(
        'assets/images/Covid.png',
      ),
    );
  }
}
