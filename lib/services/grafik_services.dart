import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:stimo/models/grafik_models.dart';

class GrafikService {
  String baseUrl = 'http://192.168.18.12:8000/api';

  Future<List<GrafikModel>> getGrafik() async {
    List<GrafikModel> listGrafik = [];
    var url = '$baseUrl/grafik-all';

    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(Uri.parse(url), headers: headers);

    var data = jsonDecode(response.body);

    var data2 = data['data'].length;

    print(data2);

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      data.forEach((element) {
        GrafikModel grafiks = GrafikModel.fromJson(element);
        listGrafik.add(grafiks);
      });

      return listGrafik;
    } else {
      throw Exception('Gagal Get Grafik Data!');
    }
  }
}
