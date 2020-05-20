class FeedModel {
  String imageUrl;
  String payerName;
  String recipient;
  String status;
  String payDescription;
  String paidTime;
  bool isPaid;
  bool isLike;
  String paidMoney;
  String likedBy;

  FeedModel(
      {this.imageUrl,
      this.payerName,
      this.recipient,
      this.status,
      this.payDescription,
      this.paidTime,
      this.isPaid,
      this.isLike,
      this.paidMoney,
      this.likedBy});

  FeedModel.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
    payerName = json['payer_name'];
    recipient = json['recipient'];
    status = json['status'];
    payDescription = json['pay_description'];
    paidTime = json['paid_time'];
    isPaid = json['is_paid'];
    isLike = json['is_like'];
    paidMoney = json['paid_money'];
    likedBy = json['liked_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image_url'] = this.imageUrl;
    data['payer_name'] = this.payerName;
    data['recipient'] = this.recipient;
    data['status'] = this.status;
    data['pay_description'] = this.payDescription;
    data['paid_time'] = this.paidTime;
    data['is_paid'] = this.isPaid;
    data['is_like'] = this.isLike;
    data['paid_money'] = this.paidMoney;
    data['liked_by'] = this.likedBy;
    return data;
  }
}