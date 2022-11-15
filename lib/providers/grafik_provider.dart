import 'package:flutter/cupertino.dart';
import 'package:stimo/models/grafik_models.dart';
import 'package:stimo/services/grafik_services.dart';

class GrafikProvider with ChangeNotifier {
  List<GrafikModel> grafiks = [];

  void updateGrafikModel(List<GrafikModel> grafiks) {
    this.grafiks = grafiks;
    notifyListeners();
  }
}
