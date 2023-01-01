import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stimo/models/brs_models.dart';
import 'package:stimo/pages/berita_resmi_page.dart';
import 'package:stimo/theme.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class BRSDetail extends StatelessWidget {
  final int index;
  const BRSDetail({Key? key, required this.index}) : super(key: key);

  List<BRSModel> parseBRS(String response) {
    var list = jsonDecode(response)['data'];
    List<BRSModel> brs = list.map((br) => BRSModel.fromJson(br)).toList();
    print(brs.length);
    return brs;
  }

  Future<BRSModel> fetchBRSingle() async {
    var response = await http.get(Uri.parse(
        'https://webapi.bps.go.id/v1/api/view/domain/3516/model/pressrelease/lang/ind/id/${this.index}/key/3f07c05929293e0074b543e390b82178/'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      print(this.index);
      return BRSModel.fromJson(jsonDecode(response.body)['data']);
    } else {
      throw Exception('No data Found');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          child: FutureBuilder(
            future: fetchBRSingle(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return Text('There\'s no data');
              } else {
                return Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 1,
                    itemBuilder: ((context, index) {
                      return Stack(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/images/DataCenterRack.png',
                              width: MediaQuery.of(context).size.width,
                              height: 500,
                              fit: BoxFit.cover,
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
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: 52,
                                          left: 29,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Color(0xffFF7272),
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          child: GestureDetector(
                                              onTap: (() async {
                                                var url =
                                                    '${snapshot.data.pdf}';
                                                final uri = Uri.parse(url);
                                                if (await canLaunchUrl(uri)) {
                                                  await launchUrl(
                                                    uri,
                                                    mode: LaunchMode
                                                        .externalApplication,
                                                  );
                                                } else {
                                                  throw 'Could not launch $uri';
                                                }
                                              }),
                                              child: Text('Unduh BRS',
                                                  style:
                                                      whiteTextStyle.copyWith(
                                                    fontWeight: bold,
                                                    fontSize: 10,
                                                  ))),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: 52,
                                          left: 14,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Color(0xffD9D9D9),
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            BeritaResmi()));
                                              },
                                              child: Text(
                                                'BRS Lainnya',
                                                style: blackTextStyle.copyWith(
                                                  fontWeight: bold,
                                                  fontSize: 10,
                                                ),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 125,
                                    left: 30,
                                  ),
                                  child: Text(
                                    '${snapshot.data.title}',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 18,
                                      fontWeight: extraBold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 220,
                                    left: 30,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Image.asset(
                                          'assets/images/Akun.png',
                                          width: 33,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 11,
                                      ),
                                      Container(
                                        child: Text(
                                          'Oleh : BPS Kabupaten Mojokerto',
                                          style: blackTextStyle.copyWith(
                                            fontWeight: regular,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 290,
                                    left: 30,
                                    right: 30,
                                  ),
                                  child: Text('${snapshot.data.abstract}',
                                      style: blackTextStyle.copyWith(
                                        fontWeight: regular,
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 940,
                                    left: 30,
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text('Tanggal Rilis : '),
                                            ),
                                            Container(
                                              child: Text(
                                                '${snapshot.data.rlDate}',
                                                style: greenTextStyle.copyWith(
                                                  fontWeight: regular,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text('Ukuran File : '),
                                            ),
                                            Container(
                                              child: Text(
                                                '${snapshot.data.size}',
                                                style: blackTextStyle.copyWith(
                                                  fontWeight: regular,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
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
      ),
    );
  }
}
