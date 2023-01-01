class GrafikModel {
  int? turthId;
  String? turth;
  int? groupTurthId;
  String? nameGroupTurth;

  GrafikModel(
      {this.turthId, this.turth, this.groupTurthId, this.nameGroupTurth});

  GrafikModel.fromJson(Map<String, dynamic> json) {
    turthId = json['turth_id'];
    turth = json['turth'];
    groupTurthId = json['group_turth_id'];
    nameGroupTurth = json['name_group_turth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['turth_id'] = this.turthId;
    data['turth'] = this.turth;
    data['group_turth_id'] = this.groupTurthId;
    data['name_group_turth'] = this.nameGroupTurth;
    return data;
  }
}
