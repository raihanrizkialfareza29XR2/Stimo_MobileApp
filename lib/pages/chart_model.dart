import 'dart:ffi';

import 'package:charts_flutter/flutter.dart' as charts;

class ChartModel {
  String year;
  double data;
  final charts.Color color;

  ChartModel({required this.year, required this.data, required this.color});
}
