import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stimo/models/indikator_models.dart';
import 'package:stimo/pages/indikator_chart.dart';
import 'package:stimo/theme.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class IndikatorStrategis extends StatelessWidget {
  const IndikatorStrategis({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<IndikatorStrategisModel> parseIndikator(String response) {
      var list = jsonDecode(response)['data'] as List<dynamic>;
      List<IndikatorStrategisModel> indikators = list
          .map((indikator) => IndikatorStrategisModel.fromJson(indikator))
          .toList();
      print(indikators.length);
      return indikators;
    }

    Future<List<IndikatorStrategisModel>> fetchIndikator() async {
      var response = await http
          .get(Uri.parse('http://192.168.18.12:8000/api/indikator-all'));
      if (response.statusCode == 200) {
        print(response.body);
        return compute(parseIndikator, response.body);
      } else {
        throw Exception('No data Found');
      }
    }

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
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: Stack(
                    children: [
                      // Container(
                      //   margin: EdgeInsets.only(
                      //     top: 310,
                      //     left: 29,
                      //   ),
                      //   child: Row(
                      //     children: [
                      //       Text(
                      //         'Berita Lainnya',
                      //         style: blackTextStyle.copyWith(
                      //           fontWeight: bold,
                      //           fontSize: 16,
                      //         ),
                      //       ),
                      //       SizedBox(
                      //         width: 210,
                      //       ),
                      //       Image.asset(
                      //         'assets/images/ArrowBlack.png',
                      //         width: 20,
                      //         height: 20,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Container(
                      //   margin: EdgeInsets.only(
                      //     top: 370,
                      //     left: 29,
                      //   ),
                      //   child: Row(
                      //     children: [
                      //       Container(
                      //         width: 155,
                      //         height: 250,
                      //         child: Row(
                      //           children: [
                      //             Container(
                      //               width: 155,
                      //               height: 250,
                      //               decoration: BoxDecoration(
                      //                 borderRadius: BorderRadius.circular(10),
                      //                 boxShadow: [
                      //                   BoxShadow(
                      //                     color: Color(0x3f000000),
                      //                     blurRadius: 9,
                      //                     offset: Offset(0, 1),
                      //                   ),
                      //                 ],
                      //                 color: Colors.white,
                      //               ),
                      //               padding: const EdgeInsets.only(
                      //                 bottom: 25,
                      //               ),
                      //               child: Column(
                      //                 // mainAxisSize: MainAxisSize.min,
                      //                 // mainAxisAlignment: MainAxisAlignment.end,
                      //                 crossAxisAlignment:
                      //                     CrossAxisAlignment.start,
                      //                 children: [
                      //                   Container(
                      //                     width: 155,
                      //                     height: 106,
                      //                     child: Stack(
                      //                       children: [
                      //                         Container(
                      //                           width: 155,
                      //                           height: 106,
                      //                           decoration: BoxDecoration(
                      //                             borderRadius:
                      //                                 BorderRadius.only(
                      //                               topLeft:
                      //                                   Radius.circular(10),
                      //                               topRight:
                      //                                   Radius.circular(10),
                      //                               bottomLeft:
                      //                                   Radius.circular(0),
                      //                               bottomRight:
                      //                                   Radius.circular(0),
                      //                             ),
                      //                             color: Colors.white,
                      //                           ),
                      //                         ),
                      //                         Container(
                      //                           child: Image.asset(
                      //                             'assets/images/gedung.png',
                      //                           ),
                      //                         ),
                      //                       ],
                      //                     ),
                      //                   ),
                      //                   Container(
                      //                     margin: EdgeInsets.only(
                      //                       top: 10,
                      //                       left: 10,
                      //                     ),
                      //                     child: Column(
                      //                       crossAxisAlignment:
                      //                           CrossAxisAlignment.start,
                      //                       children: [
                      //                         Text(
                      //                           "Pariwisata",
                      //                           style: blackTextStyle.copyWith(
                      //                             fontSize: 14,
                      //                             fontWeight: bold,
                      //                           ),
                      //                         ),
                      //                         Text(
                      //                           "Selama bulan Juli 2022 terdapat\n6.087 kunjungan wisman ke\nJawa Timur melalui pintu masuk\nJuanda",
                      //                           style: blackTextStyle.copyWith(
                      //                             fontSize: 8,
                      //                             fontWeight: regular,
                      //                           ),
                      //                         ),
                      //                         SizedBox(
                      //                           height: 20,
                      //                         ),
                      //                         Container(
                      //                           width: 93,
                      //                           height: 20,
                      //                           decoration: BoxDecoration(
                      //                             borderRadius:
                      //                                 BorderRadius.circular(3),
                      //                             color: Color(0xffff5757),
                      //                           ),
                      //                           child: Text(
                      //                             'Bayar Sekarang',
                      //                             style:
                      //                                 whiteTextStyle.copyWith(
                      //                               fontSize: 10,
                      //                               fontWeight: semiBold,
                      //                             ),
                      //                             textAlign: TextAlign.center,
                      //                           ),
                      //                         ),
                      //                       ],
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //             Row(
                      //               children: [
                      //                 Container(
                      //                   margin: EdgeInsets.only(
                      //                     left: 20,
                      //                   ),
                      //                   width: 155,
                      //                   height: 250,
                      //                   decoration: BoxDecoration(
                      //                     borderRadius:
                      //                         BorderRadius.circular(10),
                      //                     boxShadow: [
                      //                       BoxShadow(
                      //                         color: Color(0x3f000000),
                      //                         blurRadius: 9,
                      //                         offset: Offset(0, 1),
                      //                       ),
                      //                     ],
                      //                     color: Colors.white,
                      //                   ),
                      //                   padding: const EdgeInsets.only(
                      //                     bottom: 25,
                      //                   ),
                      //                   child: Column(
                      //                     // mainAxisSize: MainAxisSize.min,
                      //                     // mainAxisAlignment: MainAxisAlignment.end,
                      //                     crossAxisAlignment:
                      //                         CrossAxisAlignment.start,
                      //                     children: [
                      //                       Container(
                      //                         width: 155,
                      //                         height: 106,
                      //                         child: Stack(
                      //                           children: [
                      //                             Container(
                      //                               width: 155,
                      //                               height: 106,
                      //                               decoration: BoxDecoration(
                      //                                 borderRadius:
                      //                                     BorderRadius.only(
                      //                                   topLeft:
                      //                                       Radius.circular(10),
                      //                                   topRight:
                      //                                       Radius.circular(10),
                      //                                   bottomLeft:
                      //                                       Radius.circular(0),
                      //                                   bottomRight:
                      //                                       Radius.circular(0),
                      //                                 ),
                      //                                 color: Colors.white,
                      //                               ),
                      //                             ),
                      //                             Container(
                      //                               child: Image.asset(
                      //                                 'assets/images/gedung.png',
                      //                               ),
                      //                             ),
                      //                           ],
                      //                         ),
                      //                       ),
                      //                       Container(
                      //                         margin: EdgeInsets.only(
                      //                           top: 10,
                      //                           left: 10,
                      //                         ),
                      //                         child: Column(
                      //                           crossAxisAlignment:
                      //                               CrossAxisAlignment.start,
                      //                           children: [
                      //                             Text(
                      //                               "Pariwisata",
                      //                               style:
                      //                                   blackTextStyle.copyWith(
                      //                                 fontSize: 14,
                      //                                 fontWeight: bold,
                      //                               ),
                      //                             ),
                      //                             Text(
                      //                               "Selama bulan Juli 2022 terdapat\n6.087 kunjungan wisman ke\nJawa Timur melalui pintu masuk\nJuanda",
                      //                               style:
                      //                                   blackTextStyle.copyWith(
                      //                                 fontSize: 8,
                      //                                 fontWeight: regular,
                      //                               ),
                      //                             ),
                      //                             SizedBox(
                      //                               height: 20,
                      //                             ),
                      //                             Container(
                      //                               width: 93,
                      //                               height: 20,
                      //                               decoration: BoxDecoration(
                      //                                 borderRadius:
                      //                                     BorderRadius.circular(
                      //                                         3),
                      //                                 color: Color(0xffff5757),
                      //                               ),
                      //                               child: Text(
                      //                                 'Bayar Sekarang',
                      //                                 style: whiteTextStyle
                      //                                     .copyWith(
                      //                                   fontSize: 10,
                      //                                   fontWeight: semiBold,
                      //                                 ),
                      //                                 textAlign:
                      //                                     TextAlign.center,
                      //                               ),
                      //                             ),
                      //                           ],
                      //                         ),
                      //                       ),
                      //                     ],
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //           ],
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),

                      //Artikel Terkait

                      Container(
                        margin: EdgeInsets.only(
                          top: 360,
                          left: 29,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Indikator Strategis',
                              style: blackTextStyle.copyWith(
                                fontWeight: bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Image.asset(
                              'assets/images/ArrowBlack.png',
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),

                      //Mulai Scrolling

                      // Container(
                      //   margin: EdgeInsets.only(
                      //     top: 710,
                      //     left: 29,
                      //   ),
                      //   child: SingleChildScrollView(
                      //     scrollDirection: Axis.vertical,
                      //     child: Column(
                      //       children: [
                      //         Image.asset(
                      //           'assets/images/bercard.png',
                      //           width: 328,
                      //           height: 114,
                      //         ),
                      //         SizedBox(
                      //           height: 30,
                      //         ),
                      //         Image.asset(
                      //           'assets/images/bercard.png',
                      //           width: 328,
                      //           height: 114,
                      //         ),
                      //         SizedBox(
                      //           height: 30,
                      //         ),
                      //         Image.asset(
                      //           'assets/images/bercard.png',
                      //           width: 328,
                      //           height: 114,
                      //         ),
                      //         SizedBox(
                      //           height: 30,
                      //         ),
                      //         Image.asset(
                      //           'assets/images/bercard.png',
                      //           width: 328,
                      //           height: 114,
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      Container(
                        child: FutureBuilder(
                          future: fetchIndikator(),
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            print(snapshot);
                            if (!snapshot.hasData) {
                              return Text('No data Found');
                            } else {
                              return Container(
                                height: 400,
                                margin: EdgeInsets.only(
                                  top: 400,
                                ),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: snapshot.data.length,
                                  itemBuilder: (context, index) {
                                    return Container(
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
                                                  width: 22,
                                                ),
                                                Container(
                                                  width: 260,
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          '${snapshot.data[index].title}',
                                                          style: dangerTextStyle
                                                              .copyWith(
                                                            fontSize: 13,
                                                            fontWeight: bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
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
                                                      height: 60,
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          height: 70,
                                                        ),
                                                        Container(
                                                          width: 60,
                                                          height: 34,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        3),
                                                            color: Color(
                                                                0xffBD0000),
                                                          ),
                                                          child: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                              top: 8,
                                                            ),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                IndikatorChart(index: snapshot.data[index].id)));
                                                              },
                                                              child: Text(
                                                                'INFO',
                                                                style:
                                                                    whiteTextStyle
                                                                        .copyWith(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      regular,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 6,
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
                                    );
                                  },
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
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
            ),
          ],
        ),
      ),
    );
  }
}
