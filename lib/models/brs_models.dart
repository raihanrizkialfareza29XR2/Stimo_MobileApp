class BRSModel {
  int? brsId;
  int? subjId;
  String? subj;
  String? title;
  String? rlDate;
  String? abstract;
  String? updtDate;
  String? pdf;
  String? size;

  BRSModel(
      {this.brsId,
      this.subjId,
      this.subj,
      this.title,
      this.rlDate,
      this.abstract,
      this.updtDate,
      this.pdf,
      this.size});

  BRSModel.fromJson(Map<String, dynamic> json) {
    brsId = json['brs_id'];
    subjId = json['subj_id'];
    subj = json['subj'];
    title = json['title'];
    rlDate = json['rl_date'];
    abstract = json['abstract'];
    updtDate = json['updt_date'];
    pdf = json['pdf'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['brs_id'] = this.brsId;
    data['subj_id'] = this.subjId;
    data['subj'] = this.subj;
    data['title'] = this.title;
    data['rl_date'] = this.rlDate;
    data['abstract'] = this.abstract;
    data['updt_date'] = this.updtDate;
    data['pdf'] = this.pdf;
    data['size'] = this.size;
    return data;
  }
}
