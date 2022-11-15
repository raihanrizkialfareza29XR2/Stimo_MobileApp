import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stimo/models/grafik_models.dart';
import 'package:stimo/theme.dart';

class GrafikCard extends StatelessWidget {
  // final GrafikModel grafik;
  // GrafikCard(this.grafik);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 146,
        left: 28,
        right: 28,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.network(
          'http://192.168.18.12:8000/storage/grafik/SNgRyadvlItHfP1Rk5pI4xg6Gu5icKaBwS4OOocG.png',
          width: 338,
          height: 550,
        ),
      ),
    );
  }
}
