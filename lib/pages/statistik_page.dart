import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stimo/pages/berita_resmi_page.dart';
import 'package:stimo/pages/publikasi_page.dart';
import 'package:stimo/pages/statistik_fe_page.dart';
import 'package:stimo/theme.dart';
import 'package:stimo/widgets/home_category_item.dart';
import 'package:stimo/widgets/home_popular_item.dart';
import 'package:stimo/pages/Kategori.dart';

class StatistikPage extends StatefulWidget {
  const StatistikPage({Key? key}) : super(key: key);

  @override
  State<StatistikPage> createState() => _StatistikPageState();
}

class _StatistikPageState extends State<StatistikPage> {
  @override
  int categoryIndex = 0;
  int index = 2;
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: whiteColor,
        color: Colors.blue,
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(
            Icons.search,
            color: whiteColor,
          ),
          Icon(
            Icons.qr_code,
            color: whiteColor,
          ),
          Icon(
            Icons.home,
            color: whiteColor,
          ),
          Icon(
            Icons.search,
            color: whiteColor,
          ),
          Icon(
            Icons.account_circle_rounded,
            color: whiteColor,
          ),
        ],
        onTap: (currentIndex) {
          setState(() {
            index = currentIndex;
          });
        },
      ),
      body: Container(
        // color: Color(0xffFF6565),
        child: getSelectedWidget(index: index),
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const StatistikFEPage();
        break;
      case 1:
        widget = const PublikasiPage();
        break;
      case 2:
        widget = const BeritaResmi();
        break;
      case 3:
        widget = const Kategori();
        break;
      default:
        widget = const StatistikFEPage();
        break;
    }
    return widget;
  }
}
