// To parse this JSON data, do
//
//     final daftarMakanan = daftarMakananFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<DaftarMakanan> daftarMakananFromJson(String str) => List<DaftarMakanan>.from(json.decode(str).map((x) => DaftarMakanan.fromJson(x)));

String daftarMakananToJson(List<DaftarMakanan> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DaftarMakanan {
  int? id;
  String? namaMakanan;
  String? rating;
  String? asal;
  String? desc;
  String? kategori;
  String? tempat;

  DaftarMakanan({
    this.id,
    this.namaMakanan,
    this.rating,
    this.asal,
    this.desc,
    this.kategori,
    this.tempat,
  });

  factory DaftarMakanan.fromJson(Map<String, dynamic> json) => DaftarMakanan(
    id: json["id"],
    namaMakanan: json["nama_makanan"],
    rating: json["rating"],
    asal: json["asal"],
    desc: json["desc"],
    kategori: json["kategori"],
    tempat: json["tempat"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nama_makanan": namaMakanan,
    "rating": rating,
    "asal": asal,
    "desc": desc,
    "kategori": kategori,
    "tempat": tempat,
  };
}
