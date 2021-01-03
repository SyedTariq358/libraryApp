// To parse this JSON data, do
//
//     final books = booksFromJson(jsonString);

import 'dart:convert';

List<Books> booksFromJson(String str) => List<Books>.from(json.decode(str).map((x) => Books.fromJson(x)));

String booksToJson(List<Books> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Books {
    Books({
        this.id,
        this.title,
        this.author,
        this.department,
        this.image,
    });

    int id;
    String title;
    String author;
    Department department;
    dynamic image;

    factory Books.fromJson(Map<String, dynamic> json) => Books(
        id: json["id"],
        title: json["title"],
        author: json["author"],
        department: departmentValues.map[json["department"]],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "author": author,
        "department": departmentValues.reverse[department],
        "image": image,
    };
}

enum Department { UNDEFINED }

final departmentValues = EnumValues({
    "Undefined": Department.UNDEFINED
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}