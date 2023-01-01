class TabelModel {
  int? newsId;
  String? newscatId;
  String? newscatName;
  String? title;
  String? news;
  String? rlDate;

  TabelModel(
      {this.newsId,
      this.newscatId,
      this.newscatName,
      this.title,
      this.news,
      this.rlDate});

  TabelModel.fromJson(Map<String, dynamic> json) {
    newsId = json['news_id'];
    newscatId = json['newscat_id'];
    newscatName = json['newscat_name'];
    title = json['title'];
    news = json['news'];
    rlDate = json['rl_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['news_id'] = this.newsId;
    data['newscat_id'] = this.newscatId;
    data['newscat_name'] = this.newscatName;
    data['title'] = this.title;
    data['news'] = this.news;
    data['rl_date'] = this.rlDate;
    return data;
  }
}
