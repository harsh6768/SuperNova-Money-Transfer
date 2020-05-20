class RecentModel {
  String imageUrl;
  String name;

  RecentModel({this.imageUrl, this.name});

  RecentModel.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image_url'] = this.imageUrl;
    data['name'] = this.name;
    return data;
  }
}
