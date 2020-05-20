class AllContactModel {
  String imageUrl;
  String name;
  String username;

  AllContactModel({this.imageUrl, this.name, this.username});

  AllContactModel.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
    name = json['name'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image_url'] = this.imageUrl;
    data['name'] = this.name;
    data['username'] = this.username;
    return data;
  }
}