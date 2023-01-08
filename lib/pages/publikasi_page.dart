import 'dart:convert';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stimo/Widget/news_card.dart';
import 'package:stimo/models/publikasi_models.dart';
import 'package:stimo/pages/publikasi_detail.dart';
import 'package:stimo/theme.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class PublikasiPage extends StatelessWidget {
  const PublikasiPage({Key? key}) : super(key: key);

  @override
  List<PublikasiModel> parsePublikasi(String response) {
    var list = jsonDecode(response)['data'] as List<dynamic>;
    List<PublikasiModel> publikasi =
        list.map((publik) => PublikasiModel.fromJson(publik)).toList();
    print(publikasi.length);
    return publikasi;
  }

  Future<List<PublikasiModel>> fetchPublikasi() async {
    var response = await http
        .get(Uri.parse('http://192.168.18.12:8000/api/publikasi-all'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      print(data);
      return compute(parsePublikasi, response.body);
    } else {
      throw Exception('No data Found');
    }
  }

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
                          top: 410,
                        ),
                        child: FutureBuilder(
                          future: fetchPublikasi(),
                          builder: (context, AsyncSnapshot snapshot) {
                            if (!snapshot.hasData) {
                              return Text('Theres no data');
                            } else {
                              return Container(
                                height: 238,
                                child: ListView.builder(
                                  itemCount: snapshot.data.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: ((context, index) {
                                    return Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        PublikasiDetail(
                                                            index: snapshot
                                                                .data[index]
                                                                .pubId)));
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                  left: 22,
                                                  right: 24,
                                                ),
                                                width: 110,
                                                height: 155,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffD4E5FF),
                                                  borderRadius:
                                                      BorderRadius.circular(9),
                                                ),
                                                child: Image.network(
                                                  '${snapshot.data[index].cover}',
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                  top: 20,
                                                  left: 12,
                                                ),
                                                width: 206,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(9),
                                                ),
                                                child: Text(
                                                  '${snapshot.data[index].title}',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.nunitoSans(
                                                    fontWeight: bold,
                                                    color: Color(0xff333333),
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    );
                                  }),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 200,
                        ),
                        child: Stack(
                          children: [
                            // Container publikasi bawah
                            Container(
                              child: FutureBuilder(
                                future: fetchPublikasi(),
                                builder: (context, AsyncSnapshot snapshot) {
                                  if (!snapshot.hasData) {
                                    return Text('Theres no data');
                                  } else {
                                    return Container(
                                      height: 560,
                                      margin: EdgeInsets.only(
                                        top: 435,
                                        left: 24,
                                      ),
                                      child: ListView.builder(
                                        itemCount: snapshot.data.length,
                                        shrinkWrap: true,
                                        itemBuilder: ((context, index) {
                                          return Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                  top: 50,
                                                ),
                                                child: Container(
                                                  width: 345,
                                                  height: 205,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        width: 345,
                                                        height: 205,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(22),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color(
                                                                  0x3f000000),
                                                              blurRadius: 4,
                                                              offset:
                                                                  Offset(0, 2),
                                                            ),
                                                          ],
                                                          color: Colors.white,
                                                        ),
                                                        child: Stack(
                                                          children: [
                                                            Positioned.fill(
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child:
                                                                    Container(
                                                                  width: 345,
                                                                  height: 123,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              22),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              22),
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                    color: Color(
                                                                        0xffff5252),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Positioned(
                                                              left: 260,
                                                              top: 29,
                                                              child: Container(
                                                                width: 66,
                                                                height: 66,
                                                                child: Image
                                                                    .network(
                                                                  '${snapshot.data[index].cover}',
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                left: 10,
                                                                top: 20,
                                                              ),
                                                              height: 80,
                                                              width: 250,
                                                              child: Row(
                                                                children: [
                                                                  Expanded(
                                                                    child: Text(
                                                                      snapshot
                                                                          .data[
                                                                              index]
                                                                          .title,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            20,
                                                                        fontFamily:
                                                                            "Nunito Sans",
                                                                        fontWeight:
                                                                            FontWeight.w700,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Positioned(
                                                              left: 13,
                                                              top: 137,
                                                              child: Container(
                                                                width: 48,
                                                                height: 48,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                ),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/arrowDown.png',
                                                                ),
                                                              ),
                                                            ),
                                                            Positioned(
                                                              left: 65,
                                                              top: 138,
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) =>
                                                                              PublikasiDetail(index: snapshot.data[index].pubId)));
                                                                },
                                                                child: Text(
                                                                  "Lihat detail publikasi",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Positioned(
                                                              left: 216,
                                                              top: 146,
                                                              child:
                                                                  GestureDetector(
                                                                onTap:
                                                                    (() async {
                                                                  var url =
                                                                      '${snapshot.data[index].pdf}';
                                                                  final uri =
                                                                      Uri.parse(
                                                                          url);
                                                                  if (await canLaunchUrl(
                                                                      uri)) {
                                                                    await launchUrl(
                                                                      uri,
                                                                      mode: LaunchMode
                                                                          .externalApplication,
                                                                    );
                                                                  } else {
                                                                    throw 'Could not launch $uri';
                                                                  }
                                                                }),
                                                                child:
                                                                    Container(
                                                                  width: 111,
                                                                  height: 31,
                                                                  child: Stack(
                                                                    children: [
                                                                      Positioned
                                                                          .fill(
                                                                        child:
                                                                            Align(
                                                                          child:
                                                                              Text(
                                                                            "Unduh Sekarang",
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xff00192c),
                                                                              fontSize: 12,
                                                                              fontFamily: "Nunito Sans",
                                                                              fontWeight: FontWeight.w700,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            111,
                                                                        height:
                                                                            31,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(13),
                                                                          color:
                                                                              Color(0x6671c3ff),
                                                                        ),
                                                                      ),
                                                                    ],
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
                                              ),
                                            ],
                                          );
                                        }),
                                      ),
                                    );
                                  }
                                },
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
