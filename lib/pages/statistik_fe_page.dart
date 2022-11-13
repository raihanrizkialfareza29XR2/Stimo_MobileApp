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
                margin: EdgeInsets.only(top: 36, left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/indikator');
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/IndikatorStrategis.png',
                                  width: 80,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Indikator Strategis',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 10,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/publikasi');
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/PublikasiMenu.png',
                                  width: 80,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Publikasi',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 10,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 38,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/infografis');
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/InfografisMenu.png',
                                  width: 80,
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
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/grafik');
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/infografi.png',
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Grafik',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 10,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/beritaresmi');
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/konsulkotak.png',
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'BRS',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 10,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 38,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/tabel');
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/TabelPage.png',
                                  width: 80,
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Tabel',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 10,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                          )
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

              //Berita Resmi Statistik
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
                      'Publikasi',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: extraBold,
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

              //Publikasi Statistik Card 1
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 20,
                  right: 20,
                ),
                width: 280,
                height: 165,
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
                            width: 140,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Statistik Daerah Kabupaten\nMojokerto 2022',
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: extraBold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/Container.png',
                        height: 165,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 2,
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 65,
                              left: 140,
                            ),
                            child: Text(
                              'Tanggal Rilis : ',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 66,
                              left: 1,
                            ),
                            child: Text(
                              '2022-09-28',
                              style: blueseaTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 90,
                              left: 140,
                            ),
                            child: Text(
                              'Ukuran File : ',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 91,
                              left: 1,
                            ),
                            child: Text(
                              '14,5 MB',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 125,
                        left: 140,
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFF5252),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(8),
                              child: Text(
                                'Unduh',
                                style: whiteTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: 9,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 65,
                            height: 29,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff3876D3),
                            ),
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/detail_publikasi');
                                  },
                                  child: Container(
                                    child: Text(
                                      'Pratinjau',
                                      style: whiteTextStyle.copyWith(
                                        fontWeight: bold,
                                        fontSize: 9,
                                      ),
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

              //Publikasi Statistik 2
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 20,
                  right: 20,
                ),
                width: 280,
                height: 165,
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
                            width: 140,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Statistik Daerah Kabupaten\nMojokerto 2022',
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: extraBold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/Container.png',
                        height: 165,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 2,
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 65,
                              left: 140,
                            ),
                            child: Text(
                              'Tanggal Rilis : ',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 66,
                              left: 1,
                            ),
                            child: Text(
                              '2022-09-28',
                              style: blueseaTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 90,
                              left: 140,
                            ),
                            child: Text(
                              'Ukuran File : ',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 91,
                              left: 1,
                            ),
                            child: Text(
                              '14,5 MB',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 125,
                        left: 140,
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFF5252),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(8),
                              child: Text(
                                'Unduh',
                                style: whiteTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: 9,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 65,
                            height: 29,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff3876D3),
                            ),
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/detail_publikasi');
                                  },
                                  child: Container(
                                    child: Text(
                                      'Pratinjau',
                                      style: whiteTextStyle.copyWith(
                                        fontWeight: bold,
                                        fontSize: 9,
                                      ),
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
                      'Berita Resmi Statistik',
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
              //Berita Resmi Statistik Card 2
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 24,
                  right: 24,
                ),
                width: 300,
                height: 160,
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
                                    height: 70,
                                  ),
                                  Container(
                                    width: 60,
                                    height: 34,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Color(0xffBD0000),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: 8,
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
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    width: 65,
                                    height: 34,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Color(0xff004171),
                                    ),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, '/BRS_detail');
                                          },
                                          child: Container(
                                            child: Text(
                                              'DETAIL',
                                              style: whiteTextStyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: regular,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ],
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

              //Berita Resmi Statistik Card 2
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 24,
                  right: 24,
                ),
                width: 300,
                height: 160,
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
                                    height: 70,
                                  ),
                                  Container(
                                    width: 60,
                                    height: 34,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Color(0xffBD0000),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: 8,
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
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    width: 65,
                                    height: 34,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Color(0xff004171),
                                    ),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, '/BRS_detail');
                                          },
                                          child: Container(
                                            child: Text(
                                              'DETAIL',
                                              style: whiteTextStyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: regular,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ],
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
