// To parse this JSON data, do
//
//     final model = modelFromJson(jsonString);

import 'dart:convert';

LessonsModel modelFromJson(String str) =>
    LessonsModel.fromJson(json.decode(str));

String modelToJson(LessonsModel data) => json.encode(data.toJson());

class LessonsModel {
  LessonsModel({
    required this.requestId,
    required this.items,
    required this.count,
    required this.anyKey,
  });

  String requestId;
  List<Item> items;
  int count;
  String anyKey;

  factory LessonsModel.fromJson(Map<String, dynamic> json) => LessonsModel(
        requestId: json["requestId"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        count: json["count"],
        anyKey: json["anyKey"],
      );

  Map<String, dynamic> toJson() => {
        "requestId": requestId,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "count": count,
        "anyKey": anyKey,
      };
}

class Item {
  Item({
    required this.createdAt,
    required this.name,
    required this.duration,
    required this.category,
    required this.locked,
    required this.id,
  });

  DateTime? createdAt;
  String? name;
  int? duration;
  String? category;
  bool? locked;
  String? id;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        createdAt: DateTime.parse(json["createdAt"]),
        name: json["name"],
        duration: json["duration"],
        category: json["category"],
        locked: json["locked"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt?.toIso8601String(),
        "name": name,
        "duration": duration,
        "category": category,
        "locked": locked,
        "id": id,
      };
}
