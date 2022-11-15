class GrafikModel {
  int? id;
  String? kategori;
  String? fileGrafik;
  String? gambarGrafik;
  String? createdAt;
  String? updatedAt;

  GrafikModel(
      {this.id,
      this.kategori,
      this.fileGrafik,
      this.gambarGrafik,
      this.createdAt,
      this.updatedAt});

  GrafikModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    kategori = json['kategori'];
    fileGrafik = json['file_grafik'];
    gambarGrafik = json['gambar_grafik'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['kategori'] = this.kategori;
    data['file_grafik'] = this.fileGrafik;
    data['gambar_grafik'] = this.gambarGrafik;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
