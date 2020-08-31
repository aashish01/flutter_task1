// To parse this JSON data, do
//
//     final details = detailsFromMap(jsonString);

import 'dart:convert';

List<Details> detailsFromMap(String str) =>
    List<Details>.from(json.decode(str).map((x) => Details.fromMap(x)));

String detailsToMap(List<Details> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Details {
  Details({
    this.date,
    this.name,
    this.image,
    this.price,
    this.address1,
    this.time1,
    this.address2,
    this.time2,
  });

  String date;
  String name;
  String image;
  String price;
  String address1;
  String time1;
  String address2;
  String time2;

  factory Details.fromMap(Map<String, dynamic> json) => Details(
        date: json["date"],
        name: json["name"],
        image: json["image"],
        price: json["price"],
        address1: json["address1"],
        time1: json["time1"],
        address2: json["address2"],
        time2: json["time2"],
      );

  Map<String, dynamic> toMap() => {
        "date": date,
        "name": name,
        "image": image,
        "price": price,
        "address1": address1,
        "time1": time1,
        "address2": address2,
        "time2": time2,
      };
}
