import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stimo/Widget/news_card.dart';
import 'package:stimo/theme.dart';

class PublikasiPage extends StatelessWidget {
  const PublikasiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/Red_BG.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 26,
                left: 31,
              ),
              child: Stack(
                children: [
                  Text(
                    'Publikasi',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 24,
                      fontWeight: bold,
                      color: whiteColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 35,
                    ),
                    width: 180,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xffFFA7A7),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: whiteColor,
                        ),
                        Text(
                          'Kabupaten Mojokerto',
                          style: GoogleFonts.nunitoSans(
                            color: whiteColor,
                            fontSize: 14,
                            fontWeight: extraBold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 260,
                      top: 10,
                    ),
                    child: Image.asset(
                      'assets/images/pedulilindungi.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: 135,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: 15,
                          left: 25,
                          right: 20,
                          bottom: 20,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/analisis.png',
                              width: 340,
                              height: 162,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 195,
                        ),
                        height: 120,
                        decoration: BoxDecoration(
                          color: Color(0xffECDFDF),
                        ),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 22,
                            vertical: 20,
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 80,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  left: 75,
                                  top: 15,
                                ),
                                child: Text(
                                  'Dapatkan Informasi Data Terkini',
                                  style: GoogleFonts.nunitoSans(
                                    fontWeight: extraBold,
                                    color: Color(0xff828282),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 75,
                                  top: 33,
                                ),
                                child: Text(
                                  'Kini Stimo App BPS Kabupaten Mojokerto\nhadir dengan tampilan & fitur terbaru',
                                  style: GoogleFonts.nunitoSans(
                                    fontWeight: regular,
                                    color: Color(0xff828282),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 214,
                          left: 20,
                        ),
                        child: Image.asset(
                          'assets/images/logobalai.png',
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 214,
                          left: 310,
                        ),
                        child: Image.asset(
                          'assets/images/bluearrow.png',
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 351,
                          left: 23,
                        ),
                        child: Text(
                          'Seputar Sosial & Kependudukan',
                          style: GoogleFonts.nunitoSans(
                            fontWeight: extraBold,
                            color: Color(0xff333333),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 376,
                          left: 23,
                        ),
                        child: Text(
                          'Dapatkan informasi terkini',
                          style: GoogleFonts.nunitoSans(
                            fontWeight: semiBold,
                            color: Color(0xff828282),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 351,
                          left: 290,
                          right: 24,
                        ),
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color(0xffD4E5FF),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 7, bottom: 7, left: 7, right: 7),
                          child: Text(
                            'Lihat Semua',
                            style: GoogleFonts.nunitoSans(
                              fontWeight: bold,
                              color: Color(0xff005079),
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),

                      //Card News Curah Hujan
                      Container(
                        margin: EdgeInsets.only(
                          top: 430,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
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
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 20,
                                      left: 22,
                                      right: 24,
                                    ),
                                    width: 206,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Text(
                                      'Curah Hujan per Bulan Menurut Stasiun Pengamatan, 2019',
                                      style: GoogleFonts.nunitoSans(
                                        fontWeight: bold,
                                        color: Color(0xff333333),
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      right: 24,
                                    ),
                                    width: 206,
                                    height: 124,
                                    decoration: BoxDecoration(
                                      color: Color(0xffD4E5FF),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Image.asset(
                                      'assets/images/Jokowi.png',
                                      width: 206,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 20,
                                      right: 24,
                                    ),
                                    width: 206,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Text(
                                      'Jokowi Beri Kabar Baik Soal Covid-19 RI, Apa itu?',
                                      style: GoogleFonts.nunitoSans(
                                        fontWeight: bold,
                                        color: Color(0xff333333),
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 200,
                        ),
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 451,
                                left: 23,
                              ),
                              child: Text(
                                'Seputar Sosial & Kependudukan',
                                style: GoogleFonts.nunitoSans(
                                  fontWeight: extraBold,
                                  color: Color(0xff333333),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 476,
                                left: 23,
                              ),
                              child: Text(
                                'Dapatkan informasi terkini',
                                style: GoogleFonts.nunitoSans(
                                  fontWeight: semiBold,
                                  color: Color(0xff828282),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 451,
                                left: 290,
                                right: 24,
                              ),
                              width: 80,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xffD4E5FF),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 7, bottom: 7, left: 7, right: 7),
                                child: Text(
                                  'Lihat Semua',
                                  style: GoogleFonts.nunitoSans(
                                    fontWeight: bold,
                                    color: Color(0xff005079),
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 520,
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                            left: 22,
                                            right: 24,
                                          ),
                                          width: 206,
                                          height: 124,
                                          decoration: BoxDecoration(
                                            color: Color(0xffD4E5FF),
                                            borderRadius:
                                                BorderRadius.circular(9),
                                          ),
                                          child: Image.asset(
                                            'assets/images/Covid.png',
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                            top: 20,
                                            left: 22,
                                            right: 24,
                                          ),
                                          width: 206,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                          ),
                                          child: Text(
                                            'Curah Hujan per Bulan Menurut Stasiun Pengamatan, 2019',
                                            style: GoogleFonts.nunitoSans(
                                              fontWeight: bold,
                                              color: Color(0xff333333),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                            right: 24,
                                          ),
                                          width: 206,
                                          height: 124,
                                          decoration: BoxDecoration(
                                            color: Color(0xffD4E5FF),
                                            borderRadius:
                                                BorderRadius.circular(9),
                                          ),
                                          child: Image.asset(
                                            'assets/images/Jokowi.png',
                                            width: 206,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                            top: 20,
                                            right: 24,
                                          ),
                                          width: 206,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                          ),
                                          child: Text(
                                            'Jokowi Beri Kabar Baik Soal Covid-19 RI, Apa itu?',
                                            style: GoogleFonts.nunitoSans(
                                              fontWeight: bold,
                                              color: Color(0xff333333),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 730,
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                      ),
                                      width: 155,
                                      height: 69,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color(0xffFF3939),
                                            Color(0x73FF3939),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                              left: 18,
                                            ),
                                            child: Text(
                                              'Gender',
                                              style: whiteTextStyle.copyWith(
                                                fontSize: 14,
                                                fontWeight: semiBold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          Image.asset(
                                            'assets/images/maleandfemale.png',
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                      ),
                                      width: 155,
                                      height: 69,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color(0xff397CFF),
                                            Color(0x73397CFF),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                              left: 18,
                                            ),
                                            child: Text(
                                              'Geografi',
                                              style: whiteTextStyle.copyWith(
                                                fontSize: 14,
                                                fontWeight: semiBold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Image.asset(
                                            'assets/images/globe.png',
                                            width: 48,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                      ),
                                      width: 155,
                                      height: 69,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color(0xffFF3939),
                                            Color(0x73FF3939),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                              left: 18,
                                            ),
                                            child: Text(
                                              'Energi',
                                              style: whiteTextStyle.copyWith(
                                                fontSize: 14,
                                                fontWeight: semiBold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Image.asset(
                                            'assets/images/conflict.png',
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                      ),
                                      width: 155,
                                      height: 69,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color(0xffFF3939),
                                            Color(0x73FF3939),
                                          ],
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                              left: 18,
                                            ),
                                            child: Text(
                                              'Perikanan',
                                              style: whiteTextStyle.copyWith(
                                                fontSize: 14,
                                                fontWeight: semiBold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Image.asset(
                                            'assets/images/perch.png',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 855,
                                left: 24,
                              ),
                              width: 345,
                              height: 205,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 345,
                                    height: 205,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x3f000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                      color: Colors.white,
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: 345,
                                              height: 123,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(22),
                                                  topRight: Radius.circular(22),
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(0),
                                                ),
                                                color: Color(0xffff5252),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 260,
                                          top: 39,
                                          child: Container(
                                            width: 66,
                                            height: 66,
                                            child: Image.asset(
                                              'assets/images/smartphone.png',
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 26,
                                          top: 20,
                                          child: Text(
                                            "Pertumbuhan Ekonomi\nKabupaten Mojokerto\nTahun 2021",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: "Nunito Sans",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 13,
                                          top: 137,
                                          child: Container(
                                            width: 48,
                                            height: 48,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Image.asset(
                                              'assets/images/arrowDown.png',
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 65,
                                          top: 153,
                                          child: Text(
                                            "Lihat detail publikasi",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 216,
                                          top: 146,
                                          child: Container(
                                            width: 111,
                                            height: 31,
                                            child: Stack(
                                              children: [
                                                Positioned.fill(
                                                  child: Align(
                                                    child: Text(
                                                      "Unduh Sekarang",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff00192c),
                                                        fontSize: 12,
                                                        fontFamily:
                                                            "Nunito Sans",
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 111,
                                                  height: 31,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            13),
                                                    color: Color(0x6671c3ff),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 1100,
                                left: 24,
                              ),
                              width: 345,
                              height: 205,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 345,
                                    height: 205,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x3f000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                      color: Colors.white,
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: 345,
                                              height: 123,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(22),
                                                  topRight: Radius.circular(22),
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(0),
                                                ),
                                                color: Color(0xffff5252),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 260,
                                          top: 39,
                                          child: Container(
                                            width: 66,
                                            height: 66,
                                            child: Image.asset(
                                              'assets/images/smartphone.png',
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 26,
                                          top: 20,
                                          child: Text(
                                            "Pertumbuhan Ekonomi\nKabupaten Mojokerto\nTahun 2021",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: "Nunito Sans",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 13,
                                          top: 137,
                                          child: Container(
                                            width: 48,
                                            height: 48,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Image.asset(
                                              'assets/images/arrowDown.png',
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 65,
                                          top: 153,
                                          child: Text(
                                            "Lihat detail publikasi",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 216,
                                          top: 146,
                                          child: Container(
                                            width: 111,
                                            height: 31,
                                            child: Stack(
                                              children: [
                                                Positioned.fill(
                                                  child: Align(
                                                    child: Text(
                                                      "Unduh Sekarang",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff00192c),
                                                        fontSize: 12,
                                                        fontFamily:
                                                            "Nunito Sans",
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 111,
                                                  height: 31,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            13),
                                                    color: Color(0x6671c3ff),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 1350,
                                left: 24,
                              ),
                              width: 345,
                              height: 205,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 345,
                                    height: 205,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x3f000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                      color: Colors.white,
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: 345,
                                              height: 123,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(22),
                                                  topRight: Radius.circular(22),
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(0),
                                                ),
                                                color: Color(0xffff5252),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 260,
                                          top: 39,
                                          child: Container(
                                            width: 66,
                                            height: 66,
                                            child: Image.asset(
                                              'assets/images/smartphone.png',
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 26,
                                          top: 20,
                                          child: Text(
                                            "Pertumbuhan Ekonomi\nKabupaten Mojokerto\nTahun 2021",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: "Nunito Sans",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 13,
                                          top: 137,
                                          child: Container(
                                            width: 48,
                                            height: 48,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Image.asset(
                                              'assets/images/arrowDown.png',
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 65,
                                          top: 153,
                                          child: Text(
                                            "Lihat detail publikasi",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 216,
                                          top: 146,
                                          child: Container(
                                            width: 111,
                                            height: 31,
                                            child: Stack(
                                              children: [
                                                Positioned.fill(
                                                  child: Align(
                                                    child: Text(
                                                      "Unduh Sekarang",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff00192c),
                                                        fontSize: 12,
                                                        fontFamily:
                                                            "Nunito Sans",
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 111,
                                                  height: 31,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            13),
                                                    color: Color(0x6671c3ff),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
