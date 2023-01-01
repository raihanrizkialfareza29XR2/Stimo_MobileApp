import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stimo/models/tabel_models.dart';
import 'package:stimo/theme.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart' as http;

class NewsDetail extends StatelessWidget {
  final int index;
  const NewsDetail({Key? key, required this.index}) : super(key: key);

  List<TabelModel> parseNews(String response) {
    var list = jsonDecode(response)['data'];
    List<TabelModel> news =
        list.map((berita) => TabelModel.fromJson(berita)).toList();
    print(news.length);
    return news;
  }

  Future<TabelModel> fetchNews() async {
    var response = await http.get(Uri.parse(
        'https://webapi.bps.go.id/v1/api/view/domain/3516/model/news/lang/ind/id/${this.index}/key/3f07c05929293e0074b543e390b82178/'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      print(this.index);
      return TabelModel.fromJson(jsonDecode(response.body)['data']);
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
            future: fetchNews(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return Text('there\'s no data');
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
                                    margin: EdgeInsets.only(
                                      top: 35,
                                      left: 30,
                                    ),
                                    child: Html(
                                      data: """${snapshot.data.title}""",
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 90,
                                      left: 30,
                                      right: 30,
                                    ),
                                    child: Html(
                                      data: '${snapshot.data.news}',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      })),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
