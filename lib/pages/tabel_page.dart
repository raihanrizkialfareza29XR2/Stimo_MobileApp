import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stimo/models/tabel_models.dart';
import 'package:stimo/pages/news_detail.dart';
import 'package:stimo/theme.dart';
import 'package:http/http.dart' as http;

class TabelPage extends StatelessWidget {
  const TabelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TabelModel> parseTabel(String response) {
      var list = jsonDecode(response)['data'][1] as List<dynamic>;
      List<TabelModel> tabels =
          list.map((tabel) => TabelModel.fromJson(tabel)).toList();
      print(tabels.length);
      return tabels;
    }

    Future<List<TabelModel>> fetchTabel() async {
      var response = await http.get(Uri.parse(
          'https://webapi.bps.go.id/v1/api/list/model/news/lang/ind/domain/3516/key/3f07c05929293e0074b543e390b82178/'));
      if (response.statusCode == 200) {
        print(response.body);
        return compute(parseTabel, response.body);
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
                    'assets/images/strathero.png',
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
                      //   width: 340,
                      //   height: 183,
                      //   margin: EdgeInsets.only(
                      //     top: 100,
                      //     left: 26,
                      //     right: 26,
                      //   ),
                      //   child: Row(
                      //     mainAxisSize: MainAxisSize.min,
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: [
                      //       Container(
                      //         width: 340,
                      //         height: 183,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(14),
                      //           boxShadow: [
                      //             BoxShadow(
                      //               color: Color(0x3f000000),
                      //               blurRadius: 10,
                      //               offset: Offset(0, 2),
                      //             ),
                      //           ],
                      //           color: Colors.white,
                      //         ),
                      //         padding: const EdgeInsets.only(
                      //           left: 12,
                      //           right: 12,
                      //         ),
                      //         child: Row(
                      //           mainAxisSize: MainAxisSize.min,
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           crossAxisAlignment: CrossAxisAlignment.center,
                      //           children: [
                      //             Container(
                      //               width: 300,
                      //               height: 151,
                      //               decoration: BoxDecoration(
                      //                 borderRadius: BorderRadius.circular(8),
                      //                 color: Color(0xffd9d9d9),
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Container(
                      //   width: 340,
                      //   height: 183,
                      //   margin: EdgeInsets.only(
                      //     top: 320,
                      //     left: 26,
                      //     right: 26,
                      //   ),
                      //   child: Row(
                      //     mainAxisSize: MainAxisSize.min,
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: [
                      //       Container(
                      //         width: 340,
                      //         height: 183,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(14),
                      //           boxShadow: [
                      //             BoxShadow(
                      //               color: Color(0x3f000000),
                      //               blurRadius: 10,
                      //               offset: Offset(0, 2),
                      //             ),
                      //           ],
                      //           color: Colors.white,
                      //         ),
                      //         padding: const EdgeInsets.only(
                      //           left: 12,
                      //           right: 12,
                      //         ),
                      //         child: Row(
                      //           mainAxisSize: MainAxisSize.min,
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           crossAxisAlignment: CrossAxisAlignment.center,
                      //           children: [
                      //             Container(
                      //               width: 300,
                      //               height: 151,
                      //               decoration: BoxDecoration(
                      //                 borderRadius: BorderRadius.circular(8),
                      //                 color: Color(0xffd9d9d9),
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      Container(
                        child: FutureBuilder(
                          future: fetchTabel(),
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            print(snapshot);
                            if (!snapshot.hasData) {
                              return Text('No data Found');
                            } else {
                              return Container(
                                height: 400,
                                margin: EdgeInsets.only(
                                  top: 40,
                                ),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: snapshot.data.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    NewsDetail(
                                                        index: snapshot
                                                            .data[index]
                                                            .newsId)));
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          top: 30,
                                          left: 10,
                                          right: 10,
                                        ),
                                        width: 300,
                                        height: 310,
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFB5B5),
                                          borderRadius:
                                              BorderRadius.circular(9),
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
                                                  Container(
                                                    width: 300,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            '${snapshot.data[index].title}',
                                                            style:
                                                                dangerTextStyle
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
                                                    width: 32,
                                                  ),
                                                  Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 55,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            '${snapshot.data[index].rlDate}',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  regular,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              color: Color(
                                                                  0xffFF2E00),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 6,
                                                          ),
                                                          Container(
                                                            width: 5,
                                                            height: 5,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              color: Color(
                                                                  0xff980000),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 6,
                                                          ),
                                                          Text(
                                                            '${snapshot.data[index].newscatName}',
                                                            style: GoogleFonts
                                                                .poppins(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  regular,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              color: Color(
                                                                  0xffFF2E00),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Container(
                                                        width: 330,
                                                        child: Row(
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                '${snapshot.data[index].news}',
                                                                style:
                                                                    whiteTextStyle
                                                                        .copyWith(
                                                                  fontSize: 14,
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
                        margin: EdgeInsets.only(
                          left: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tabel',
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 120,
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
