class InfografisModel {
  int? infId;
  String? title;
  String? img;
  String? desc;
  int? category;
  String? dl;

  InfografisModel({
    this.infId,
    this.title,
    this.img,
    this.desc,
    this.category,
    this.dl,
  });

  InfografisModel.fromJson(Map<String, dynamic> json) {
    infId = json['inf_id'];
    title = json['title'];
    img = json['img'];
    desc = json['desc'];
    category = json['category'];
    dl = json['dl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['inf_id'] = this.infId;
    data['title'] = this.title;
    data['img'] = this.img;
    data['desc'] = this.desc;
    data['category'] = this.category;
    data['dl'] = this.dl;
    return data;
  }
}
