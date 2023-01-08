import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:stimo/models/indikator_models.dart';
import 'package:stimo/pages/chart_model.dart';

class IndikatorChart extends StatelessWidget {
  final int index;
  const IndikatorChart({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<IndikatorStrategisModel> parseIndikator(String response) {
      var list = jsonDecode(response)['data'];
      List<IndikatorStrategisModel> indikators = list
          .map((indikator) => IndikatorStrategisModel.fromJson(indikator))
          .toList();
      return indikators;
    }

    Future<IndikatorStrategisModel> fetchIndikator() async {
      var response = await http.get(
          Uri.parse('http://192.168.18.12:8000/api/indikator/${this.index}'));
      if (response.statusCode == 200) {
        print(this.index);
        List data = [];
        var datanya =
            IndikatorStrategisModel.fromJson(jsonDecode(response.body)['data']);
        return IndikatorStrategisModel.fromJson(
            jsonDecode(response.body)['data']);
      } else {
        throw Exception('No data Found');
      }
    }

    return Scaffold(
      body: Container(
          child: FutureBuilder(
        future: fetchIndikator(),
        builder: (context, AsyncSnapshot snapshot) {
          var data = [
            ChartModel(
                year: "2017",
                data: snapshot.data.indexSatu,
                color: charts.ColorUtil.fromDartColor(Colors.blue)),
            ChartModel(
                year: "2018",
                data: snapshot.data.indexDua,
                color: charts.ColorUtil.fromDartColor(Colors.blue)),
            ChartModel(
                year: "2019",
                data: snapshot.data.indexTiga,
                color: charts.ColorUtil.fromDartColor(Colors.blue)),
            ChartModel(
                year: "2020",
                data: snapshot.data.indexEmpat,
                color: charts.ColorUtil.fromDartColor(Colors.blue)),
            ChartModel(
                year: "2021",
                data: snapshot.data.indexLima,
                color: charts.ColorUtil.fromDartColor(Colors.blue)),
          ];
          List<charts.Series<ChartModel, String>> series = [
            charts.Series(
              id: "indikator",
              data: data,
              domainFn: (ChartModel series, _) => series.year,
              measureFn: (ChartModel series, _) => series.data,
              colorFn: (ChartModel series, _) => series.color,
            )
          ];
          return Container(
            height: 500,
            margin: EdgeInsets.only(
              top: 90,
            ),
            padding: EdgeInsets.all(10),
            child: charts.BarChart(
              series,
              animate: true,
            ),
          );
        },
      )),
    );
  }
}
