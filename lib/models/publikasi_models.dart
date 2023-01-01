class PublikasiModel {
  String? pubId;
  String? title;
  String? issn;
  String? schDate;
  String? rlDate;
  String? abstract;
  String? katNo;
  String? pubNo;
  String? updtDate;
  String? cover;
  String? pdf;
  String? size;

  PublikasiModel(
      {this.pubId,
      this.title,
      this.issn,
      this.schDate,
      this.rlDate,
      this.abstract,
      this.katNo,
      this.pubNo,
      this.updtDate,
      this.cover,
      this.pdf,
      this.size});

  PublikasiModel.fromJson(Map<String, dynamic> json) {
    pubId = json['pub_id'];
    title = json['title'];
    issn = json['issn'];
    schDate = json['sch_date'];
    rlDate = json['rl_date'];
    abstract = json['abstract'];
    katNo = json['kat_no'];
    pubNo = json['pub_no'];
    updtDate = json['updt_date'];
    cover = json['cover'];
    pdf = json['pdf'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pub_id'] = this.pubId;
    data['title'] = this.title;
    data['issn'] = this.issn;
    data['sch_date'] = this.schDate;
    data['rl_date'] = this.rlDate;
    data['abstract'] = this.abstract;
    data['kat_no'] = this.katNo;
    data['pub_no'] = this.pubNo;
    data['updt_date'] = this.updtDate;
    data['cover'] = this.cover;
    data['pdf'] = this.pdf;
    data['size'] = this.size;
    return data;
  }
}
