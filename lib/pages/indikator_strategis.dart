import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stimo/theme.dart';

class IndikatorStrategis extends StatelessWidget {
  const IndikatorStrategis({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/Red_BG.png',
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30,
                  ),
                  child: Image.asset(
                    'assets/images/hero.png',
                    width: 326,
                    height: 326,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 330,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(47),
                    ),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 18.0,
                        spreadRadius: 0.0,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),

                  //Indikator Statistik Card 1
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 83,
                          left: 15,
                        ),
                        width: 360,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: whiteColor,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0x33000000),
                                blurRadius: 7.0,
                                spreadRadius: 0.0,
                                offset: Offset(0, 1)),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                bottom: 55,
                                left: 25,
                              ),
                              height: 42,
                              child: Text(
                                'Laju Pertumbuhan Ekonomi\n2021 (%)',
                                style: blackboldTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: extraBold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 0,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                        left: 50,
                                      ),
                                      child: Image.asset(
                                        'assets/images/RectangleBiruBismillah.png',
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 148,
                          left: 40,
                        ),
                        child: Text('4,12%',
                            style: orangemangoTextStyle.copyWith(
                              fontSize: 32,
                              fontWeight: bold,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 160,
                          left: 146,
                        ),
                        width: 39,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xff013ACD),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 4,
                              ),
                              child: Text('Info',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 115,
                          left: 300,
                        ),
                        child: Image.asset(
                          'assets/images/economy1.png',
                          scale: 4,
                        ),
                      ),

                      //Indikator Strategis Card 2
                      Container(
                        margin: EdgeInsets.only(
                          top: 240,
                          left: 15,
                        ),
                        width: 360,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: whiteColor,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0x33000000),
                                blurRadius: 7.0,
                                spreadRadius: 0.0,
                                offset: Offset(0, 1)),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                bottom: 55,
                                left: 25,
                              ),
                              height: 42,
                              child: Text(
                                'Laju Pertumbuhan Ekonomi\n2021 (%)',
                                style: blackboldTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: extraBold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 0,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                        left: 50,
                                      ),
                                      child: Image.asset(
                                        'assets/images/RectangleBiruBismillah.png',
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 300,
                          left: 40,
                        ),
                        child: Text('4,12%',
                            style: orangemangoTextStyle.copyWith(
                              fontSize: 32,
                              fontWeight: bold,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 312,
                          left: 146,
                        ),
                        width: 39,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xff013ACD),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 4,
                              ),
                              child: Text('Info',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 270,
                          left: 300,
                        ),
                        child: Image.asset(
                          'assets/images/economy1.png',
                          scale: 4,
                        ),
                      ),

                      //Indikator Strategis Card 3

                      Container(
                        margin: EdgeInsets.only(
                          top: 400,
                          left: 15,
                        ),
                        width: 360,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: whiteColor,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0x33000000),
                                blurRadius: 7.0,
                                spreadRadius: 0.0,
                                offset: Offset(0, 1)),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                bottom: 55,
                                left: 25,
                              ),
                              height: 42,
                              child: Text(
                                'Laju Pertumbuhan Ekonomi\n2021 (%)',
                                style: blackboldTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: extraBold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 0,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                        left: 50,
                                      ),
                                      child: Image.asset(
                                        'assets/images/RectangleBiruBismillah.png',
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 465,
                          left: 40,
                        ),
                        child: Text('4,12%',
                            style: orangemangoTextStyle.copyWith(
                              fontSize: 32,
                              fontWeight: bold,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 477,
                          left: 146,
                        ),
                        width: 39,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xff013ACD),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 4,
                              ),
                              child: Text('Info',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 430,
                          left: 300,
                        ),
                        child: Image.asset(
                          'assets/images/economy1.png',
                          scale: 4,
                        ),
                      ),
                    ],
                  ),
                ),

                //Indikator Strategis Lihat Detail
                Container(
                  margin: EdgeInsets.only(
                    top: 300,
                    left: 30,
                  ),
                  padding: EdgeInsets.all(3),
                  width: 330,
                  height: 70,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0x33000000),
                          blurRadius: 7.0,
                          spreadRadius: 0.0,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Berita Resmi Statistik',
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 35,
                              ),
                              width: 88,
                              height: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                gradient: LinearGradient(
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft,
                                  colors: [
                                    Color(0xffff3838),
                                    Color(0x7Dff3838)
                                  ],
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 9,
                                vertical: 3,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Lihat Detail",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.12,
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
            )
          ],
        ),
      ),
    );
  }
}
