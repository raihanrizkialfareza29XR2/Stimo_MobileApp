import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stimo/models/infografis_models.dart';
import 'package:stimo/theme.dart';
import 'package:http/http.dart' as http;

class InfografisPage extends StatelessWidget {
  const InfografisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<InfografisModel> parseInfografis(String response) {
      var list = jsonDecode(response)['data'] as List<dynamic>;
      List<InfografisModel> infografis =
          list.map((infografi) => InfografisModel.fromJson(infografi)).toList();
      print(infografis.length);
      return infografis;
    }

    Future<List<InfografisModel>> fetchInfografis() async {
      var response = await http
          .get(Uri.parse('http://192.168.18.12:8000/api/infografis-all'));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body)['data'];
        print(data);
        return compute(parseInfografis, response.body);
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
                    top: 22,
                    left: 30,
                  ),
                  child: Image.asset(
                    'assets/images/InfograohicHeroPage.png',
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
                              'Sosial & Kependudukan',
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

                      // Card Sosial Kependudukan
                      Container(
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        child: FutureBuilder(
                          future: fetchInfografis(),
                          builder: (context, AsyncSnapshot snapshot) {
                            if (!snapshot.hasData) {
                              return Text('Theres no data');
                            } else {
                              print(snapshot.data[2]);
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
                                              '${snapshot.data[index].img}',
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
                              'Infografis',
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 80,
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
