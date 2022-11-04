import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stimo/theme.dart';

class Kategori extends StatelessWidget {
  const Kategori({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.red,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Image.asset(
                'assets/images/Go_Back.png',
                fit: BoxFit.contain,
                height: 32,
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 15),
                child: Text('Kategori Data')),
            Container(
              margin: EdgeInsets.only(left: 145),
              child: Image.asset(
                'assets/images/Notifications_active.png',
                height: 32,
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Stack(
              children: [
                //Search Bar
                Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    left: 24,
                    right: 24,
                  ),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(14),
                    color: whiteColor,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Cari Kategori Data',
                        style: blackTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ),

                //Categories Row 1
                Container(
                  child: Row(
                    children: [
                      //Categories Box 1
                      Container(
                        margin: EdgeInsets.only(
                          top: 100,
                          left: 21,
                          right: 10,
                        ),
                        width: 110,
                        height: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffEEECEC),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/images/equality_1.png',
                                height: 70,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Gender',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Categories Box 2
                      Container(
                        margin: EdgeInsets.only(
                          top: 100,
                          right: 10,
                        ),
                        width: 110,
                        height: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffEEECEC),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/images/earth_1.png',
                                height: 70,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Geografi',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Categories Box 3
                      Container(
                        margin: EdgeInsets.only(
                          top: 100,
                        ),
                        width: 110,
                        height: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffEEECEC),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/images/cloudy_1.png',
                                height: 70,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Gender',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //Categories Row 2
                Container(
                  margin: EdgeInsets.only(top: 150),
                  child: Row(
                    children: [
                      //Categories Box 1
                      Container(
                        margin: EdgeInsets.only(
                          top: 100,
                          left: 21,
                          right: 10,
                        ),
                        width: 110,
                        height: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffEEECEC),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/images/network_1.png',
                                height: 70,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'IPM',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Categories Box 2
                      Container(
                        margin: EdgeInsets.only(
                          top: 100,
                          right: 10,
                        ),
                        width: 110,
                        height: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffEEECEC),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/images/people_1.png',
                                height: 70,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Kependudukan',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Categories Box 3
                      Container(
                        margin: EdgeInsets.only(
                          top: 100,
                        ),
                        width: 110,
                        height: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffEEECEC),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/images/poor_1.png',
                                height: 70,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Kemiskinan',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //Categories Row 3
                Container(
                  margin: EdgeInsets.only(top: 300),
                  child: Row(
                    children: [
                      //Categories Box 1
                      Container(
                        margin: EdgeInsets.only(
                          top: 100,
                          left: 21,
                          right: 10,
                        ),
                        width: 110,
                        height: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffEEECEC),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/images/first-aid-kit_1.png',
                                height: 70,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Kesehatan',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Categories Box 2
                      Container(
                        margin: EdgeInsets.only(
                          top: 100,
                          right: 10,
                        ),
                        width: 110,
                        height: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffEEECEC),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/images/save-money_1.png',
                                height: 70,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Konsumsi &\n Pengeluaran',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Categories Box 3
                      Container(
                        margin: EdgeInsets.only(
                          top: 100,
                        ),
                        width: 110,
                        height: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffEEECEC),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/images/mother-earth-day_1_2.png',
                                height: 70,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Lingkungan \n Hidup',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //Categories Row 4
                Container(
                  margin: EdgeInsets.only(top: 450),
                  child: Row(
                    children: [
                      //Categories Box 1
                      Container(
                        margin: EdgeInsets.only(
                          top: 100,
                          left: 21,
                          right: 10,
                        ),
                        width: 110,
                        height: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffEEECEC),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/images/hands_1.png',
                                height: 70,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Pemerintahan',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Categories Box 2
                      Container(
                        margin: EdgeInsets.only(
                          top: 100,
                          right: 10,
                        ),
                        width: 110,
                        height: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffEEECEC),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/images/education_1.png',
                                height: 70,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Pendidikan',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Categories Box 3
                      Container(
                        margin: EdgeInsets.only(
                          top: 100,
                        ),
                        width: 110,
                        height: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffEEECEC),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/images/house_1.png',
                                height: 70,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Perumahan',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //Categories Row 5
                Container(
                  margin: EdgeInsets.only(top: 600),
                  child: Row(
                    children: [
                      //Categories Box 1
                      Container(
                        margin: EdgeInsets.only(
                          top: 100,
                          left: 21,
                          right: 10,
                        ),
                        width: 110,
                        height: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffEEECEC),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/images/conference_1.png',
                                height: 70,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Politik &\n Keamanan',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Categories Box 2
                      Container(
                        margin: EdgeInsets.only(
                          top: 100,
                          right: 10,
                        ),
                        width: 110,
                        height: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffEEECEC),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/images/construction-worker_1.png',
                                height: 70,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Potensi Desa',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Categories Box 3
                      Container(
                        margin: EdgeInsets.only(
                          top: 100,
                        ),
                        width: 110,
                        height: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffEEECEC),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/images/culture_1.png',
                                height: 70,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                'Sosial Budaya',
                                style: blackTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
