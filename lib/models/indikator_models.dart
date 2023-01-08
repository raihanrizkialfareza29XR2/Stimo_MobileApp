class IndikatorStrategisModel {
  int? id;
  String? title;
  double? indexSatu;
  double? indexDua;
  double? indexTiga;
  double? indexEmpat;
  double? indexLima;
  String? createdAt;
  String? updatedAt;

  IndikatorStrategisModel(
      {this.id,
      this.title,
      this.indexSatu,
      this.indexDua,
      this.indexTiga,
      this.indexEmpat,
      this.indexLima,
      this.createdAt,
      this.updatedAt});

  IndikatorStrategisModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    indexSatu = json['index_satu'];
    indexDua = json['index_dua'];
    indexTiga = json['index_tiga'];
    indexEmpat = json['index_empat'];
    indexLima = json['index_lima'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['index_satu'] = this.indexSatu;
    data['index_dua'] = this.indexDua;
    data['index_tiga'] = this.indexTiga;
    data['index_empat'] = this.indexEmpat;
    data['index_lima'] = this.indexLima;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
