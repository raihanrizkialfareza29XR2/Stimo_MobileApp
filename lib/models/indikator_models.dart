class IndikatorStrategisModel {
  int? id;
  String? title;
  String? jumlahIndeks;
  String? isiIndex;
  String? createdAt;
  String? updatedAt;

  IndikatorStrategisModel({
    this.id,
    this.title,
    this.jumlahIndeks,
    this.isiIndex,
    this.createdAt,
    this.updatedAt,
  });

  IndikatorStrategisModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    jumlahIndeks = json['jumlah_indeks'];
    isiIndex = json['isi_index'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['jumlah_indeks'] = this.jumlahIndeks;
    data['isi_index'] = this.isiIndex;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
