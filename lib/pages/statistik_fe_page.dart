import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stimo/theme.dart';

class StatistikFEPage extends StatelessWidget {
  const StatistikFEPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFFFFF),
      child: Stack(
        children: [
          ListView(
            children: [
              // NOTE: HEADER/TITLE
              Container(
                margin: EdgeInsets.only(top: 24),
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/profile1.png',
                      width: 40,
                    ),
                    SizedBox(
                      width: 47,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          'PUSAT DATA STATISTIK',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Image.asset(
                      'assets/images/Notifications.png',
                      width: 40,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // NOTE: CATEGORY TITLE
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 45,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/map.png',
                        width: 300,
                        height: 172,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, left: 0),
                child: Container(
                  height: 123,
                  width: MediaQuery.of(context).size.width - (2 * 24),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 120,
                          width: 360,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x40000000),
                                spreadRadius: 0,
                                blurRadius: 8.0,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 140,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Analisis Kependudukan,\nSosial & Ekonomi',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Dengan data membangun negara',
                                    style: grayTextStyle.copyWith(
                                      fontWeight: semiBold,
                                      fontSize: 11,
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
                          top: 13,
                        ),
                        child: Image.asset(
                          'assets/images/2man.png',
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 36, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/chatkotak.png',
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Chat Kami',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/botkotak.png',
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Asisten Virtual',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/statistik.png',
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Indikator Statistik',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/infografi.png',
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Infografis',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/konsulkotak.png',
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Konsultasi',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/lainnya.png',
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Lainnya',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 49,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 29, vertical: 10),
                width: 300,
                height: 25,
                decoration: BoxDecoration(
                  color: Color(0xffFF5F5F),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Indikator Strategis',
                      style: whiteTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: bold,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'Lihat Semua',
                      style: whiteTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.remove_red_eye_rounded,
                      color: whiteColor,
                    )
                  ],
                ),
              ),

              //Ini Card Jumlah Penduduk
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 24,
                  right: 24,
                ),
                width: 300,
                height: 86,
                decoration: BoxDecoration(
                  color: Color(0xffFFB5B5),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 62,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Jumlah Penduduk Provinsi Jawa\nTimur 2022',
                                style: dangerTextStyle.copyWith(
                                  fontSize: 13,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 62,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 55,
                              ),
                              Text(
                                '41.149.974 Jiwa',
                                style: dangerTextStyle.copyWith(
                                  fontSize: 13,
                                  fontWeight: light,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 2,
                        left: 10,
                      ),
                      child: Image.asset(
                        'assets/images/StatisticIcons.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 28,
                        left: 300,
                      ),
                      child: Image.asset(
                        'assets/images/Arrow.png',
                        height: 35,
                        width: 35,
                      ),
                    ),
                  ],
                ),
              ),

              // Ini Card Jumlah Penduduk 2
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 24,
                  right: 24,
                ),
                width: 300,
                height: 86,
                decoration: BoxDecoration(
                  color: Color(0xffFFB5B5),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 62,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Persentase Penduduk Miskin\nJawa Timur, September 2021',
                                style: dangerTextStyle.copyWith(
                                  fontSize: 13,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 62,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 55,
                              ),
                              Text(
                                '41.149.974 Jiwa',
                                style: dangerTextStyle.copyWith(
                                  fontSize: 13,
                                  fontWeight: light,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 2,
                        left: 10,
                      ),
                      child: Image.asset(
                        'assets/images/StatisticIcons.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 28,
                        left: 300,
                      ),
                      child: Image.asset(
                        'assets/images/Arrow.png',
                        height: 35,
                        width: 35,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 24,
                  right: 24,
                ),
                width: 300,
                height: 86,
                decoration: BoxDecoration(
                  color: Color(0xffFFB5B5),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 62,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Persentase Penduduk Miskin\nJawa Timur, September 2021',
                                style: dangerTextStyle.copyWith(
                                  fontSize: 13,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 62,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 55,
                              ),
                              Text(
                                '41.149.974 Jiwa',
                                style: dangerTextStyle.copyWith(
                                  fontSize: 13,
                                  fontWeight: light,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 2,
                        left: 10,
                      ),
                      child: Image.asset(
                        'assets/images/StatisticIcons.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 28,
                        left: 300,
                      ),
                      child: Image.asset(
                        'assets/images/Arrow.png',
                        height: 35,
                        width: 35,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 50,
                  left: 30,
                  right: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'STATISTIK UMUM',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: bold,
                      ),
                    ),
                    Image.asset(
                      'assets/images/ArrowBlack.png',
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 20,
                  right: 20,
                ),
                width: 280,
                height: 130,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      spreadRadius: 0,
                      blurRadius: 11.0,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 130,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Nilai Ekspor Jawa Timur',
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 130,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Agustus 2022',
                                style: grayTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: regular,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 30,
                        left: 37,
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 130,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '2.119.301.537',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xffFFA800),
                                        fontSize: 14,
                                        fontWeight: semiBold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Milyar Rupiah',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 10,
                                        fontWeight: regular,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/bg-mask.png',
                        height: 144,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 55,
                        left: 127,
                      ),
                      child: Image.asset(
                        'assets/images/Dollar.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 20,
                  right: 20,
                ),
                width: 280,
                height: 130,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x40000000),
                      spreadRadius: 0,
                      blurRadius: 11.0,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 130,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Nilai Ekspor Jawa Timur',
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 130,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Agustus 2022',
                                style: grayTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: regular,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 30,
                        left: 37,
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 130,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '2.119.301.537',
                                      style: GoogleFonts.poppins(
                                        color: Color(0xffFFA800),
                                        fontSize: 14,
                                        fontWeight: semiBold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Milyar Rupiah',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 10,
                                        fontWeight: regular,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/bg-mask.png',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 55,
                        left: 127,
                      ),
                      child: Image.asset(
                        'assets/images/Dollar.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 50,
                  left: 30,
                  right: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'STATISTIK UMUM',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: bold,
                      ),
                    ),
                    Image.asset(
                      'assets/images/ArrowBlack.png',
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 24,
                  right: 24,
                ),
                width: 300,
                height: 133,
                decoration: BoxDecoration(
                  color: Color(0xffFFB5B5),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 62,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Jumlah Pelanggan dan Air yang\nDisalurkan Menurut Kabupaten\n/Kota di Provinsi Jawa Timur, 2022',
                                style: dangerTextStyle.copyWith(
                                  fontSize: 13,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 62,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 70,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '2021-09-17',
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: regular,
                                      fontStyle: FontStyle.italic,
                                      color: Color(0xffFF2E00),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff980000),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    '0.4 MB',
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: regular,
                                      fontStyle: FontStyle.italic,
                                      color: Color(0xffFF2E00),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Container(
                                    width: 60,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Color(0xffBD0000),
                                    ),
                                    child: Text(
                                      'UNDUH',
                                      style: whiteTextStyle.copyWith(
                                        fontSize: 12,
                                        fontWeight: regular,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    width: 60,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Color(0xff004171),
                                    ),
                                    child: Text(
                                      'DETAIL',
                                      style: whiteTextStyle.copyWith(
                                        fontSize: 12,
                                        fontWeight: regular,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 2,
                        left: 10,
                      ),
                      child: Image.asset(
                        'assets/images/StatisticIcons.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 24,
                  right: 24,
                ),
                width: 300,
                height: 133,
                decoration: BoxDecoration(
                  color: Color(0xffFFB5B5),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 62,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Jumlah Pelanggan dan Air yang\nDisalurkan Menurut Kabupaten\n/Kota di Provinsi Jawa Timur, 2022',
                                style: dangerTextStyle.copyWith(
                                  fontSize: 13,
                                  fontWeight: bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 62,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 70,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '2021-09-17',
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: regular,
                                      fontStyle: FontStyle.italic,
                                      color: Color(0xffFF2E00),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff980000),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    '0.4 MB',
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: regular,
                                      fontStyle: FontStyle.italic,
                                      color: Color(0xffFF2E00),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Container(
                                    width: 60,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Color(0xffBD0000),
                                    ),
                                    child: Text(
                                      'UNDUH',
                                      style: whiteTextStyle.copyWith(
                                        fontSize: 12,
                                        fontWeight: regular,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    width: 60,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Color(0xff004171),
                                    ),
                                    child: Text(
                                      'DETAIL',
                                      style: whiteTextStyle.copyWith(
                                        fontSize: 12,
                                        fontWeight: regular,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 2,
                        left: 10,
                      ),
                      child: Image.asset(
                        'assets/images/StatisticIcons.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
