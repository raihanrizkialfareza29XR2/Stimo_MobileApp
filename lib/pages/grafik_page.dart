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
      var data = jsonDecode(response.body)['data'];
      print(data);
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
                      Container(
                        margin: EdgeInsets.only(
                          top: 50,
                          left: 18,
                        ),
                        child: FutureBuilder(
                          future: fetchGrafik(),
                          builder: (context, AsyncSnapshot snapshot) {
                            if (!snapshot.hasData) {
                              return Text("there's no data");
                            } else {
                              return Container(
                                child: Table(
                                  border: TableBorder.all(),
                                  defaultColumnWidth:
                                      const FixedColumnWidth(90.0),
                                  children: [
                                    for (var i = 0;
                                        i < snapshot.data.length;
                                        i++)
                                      TableRow(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                                '${snapshot.data[i].turthId}'),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                                '${snapshot.data[i].turth}'),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                                '${snapshot.data[i].groupTurthId}'),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                                '${snapshot.data[i].nameGroupTurth}'),
                                          ),
                                        ],
                                      ),
                                  ],
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
            )
          ],
        ),
      ),
    );
  }
}
