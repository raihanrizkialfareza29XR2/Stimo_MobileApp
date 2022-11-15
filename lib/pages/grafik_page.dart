import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:stimo/Widget/grafik_card.dart';
import 'package:stimo/models/grafik_models.dart';
import 'package:stimo/providers/grafik_provider.dart';
import 'package:stimo/services/grafik_services.dart';
import 'package:stimo/theme.dart';

class GrafikPage extends StatelessWidget {
  String baseUrl = 'http://192.168.18.12:8000/api';

  List<GrafikModel> parseGrafik(String response) {
    var list = jsonDecode(response)['data'] as List<dynamic>;
    List<GrafikModel> grafiks =
        list.map((grafik) => GrafikModel.fromJson(grafik)).toList();
    print(grafiks.length);
    return grafiks;
  }

  Future<List<GrafikModel>> fetchGrafik() async {
    var response =
        await http.get(Uri.parse('http://192.168.18.12:8000/api/grafik-all'));
    if (response.statusCode == 200) {
      return compute(parseGrafik, response.body);
    } else {
      throw Exception('No data Found');
    }
  }
  // var nodata = 'kaofainfoa';

  // Future<GrafikModel> fetchGrafik() async {
  //   var url = '$baseUrl/grafik-all';

  //   var headers = {'Content-Type': 'application/json'};

  //   final response = await http.get(
  //     Uri.parse('http://192.168.18.12:8000/api/grafik-all'),
  //     headers: headers,
  //   );

  //   var data = jsonDecode(response.body)['data'] as List<dynamic>;

  //   if (response.statusCode == 200) {
  //     return GrafikModel.fromJson(
  //         data);
  //   } else {
  //     return jsonDecode(response.statusCode.toString());
  //   }
  // }

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
                    top: 10,
                    left: 30,
                  ),
                  child: Image.asset(
                    'assets/images/grafikhero.png',
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
                      //Sosial & Kependudukan
                      Container(
                        margin: EdgeInsets.only(
                          top: 93,
                          left: 24,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Rata-rata Lama Sekolah',
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: bold,
                              ),
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            Container(
                              child: Image.asset(
                                'assets/images/ArrowBlack.png',
                                scale: 3,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Card Sosial Kependudukan
                      Container(
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        child: FutureBuilder(
                          future: fetchGrafik(),
                          builder: (context, AsyncSnapshot snapshot) {
                            print(snapshot);
                            if (!snapshot.hasData) {
                              return Text('Theres no data');
                            } else {
                              return Container(
                                height: 550,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: snapshot.data.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: ((context, index) {
                                    return Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                            top: 146,
                                            left: 28,
                                            right: 28,
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            child: Image.network(
                                              'http://192.168.18.12:8000/storage/${snapshot.data[index].gambarGrafik}',
                                              width: 338,
                                              height: 550,
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
                      Container(
                        margin: EdgeInsets.only(
                          top: 783,
                          left: 24,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Garis Kemiskinan',
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: bold,
                              ),
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            Container(
                              child: Image.asset(
                                'assets/images/ArrowBlack.png',
                                scale: 3,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Card Sosial Kependudukan
                      Container(
                        margin: EdgeInsets.only(
                          top: 690,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 146,
                                        left: 28,
                                        right: 28,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: Image.asset(
                                          'assets/images/TemplateBRSPertanian.png',
                                          width: 338,
                                          height: 550,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 146,
                                        left: 28,
                                        right: 28,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: Image.asset(
                                          'assets/images/TemplateBRSPertanian.png',
                                          width: 338,
                                          height: 550,
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
                      Container(
                        margin: EdgeInsets.only(
                          top: 1483,
                          left: 24,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Pengeluaran Per Kapita',
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: bold,
                              ),
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            Container(
                              child: Image.asset(
                                'assets/images/ArrowBlack.png',
                                scale: 3,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Card Sosial Kependudukan
                      Container(
                        margin: EdgeInsets.only(
                          top: 1390,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 146,
                                        left: 28,
                                        right: 28,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: Image.asset(
                                          'assets/images/TemplateBRSPertanian.png',
                                          width: 338,
                                          height: 550,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 146,
                                        left: 28,
                                        right: 28,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: Image.asset(
                                          'assets/images/TemplateBRSPertanian.png',
                                          width: 338,
                                          height: 550,
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
                  ),
                ),

                //Infografis Page Lihat Detail
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
                              'Grafik',
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 110,
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
