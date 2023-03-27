import 'dart:convert';

Almacen almacenFromJson(String str) => Almacen.fromJson(json.decode(str));

String almacenToJson(Almacen data) => json.encode(data.toJson());

class Almacen {
  Almacen({
    required this.almacen,
    required this.nombre,
    required this.usaAnaquel,
  });

  final String almacen;
  final String nombre;
  final bool usaAnaquel;

  factory Almacen.fromJson(Map<String, dynamic> json) => Almacen(
        almacen: json["almacen"],
        nombre: json["nombre"],
        usaAnaquel: json["usaAnaquel"],
      );

  static List<Almacen> fromJsonList(List lista) =>
      lista.map((e) => Almacen.fromJson(e as Map<String, dynamic>)).toList();

  Map<String, dynamic> toJson() => {
        "almacen": almacen,
        "nombre": nombre,
        "usaAnaquel": usaAnaquel,
      };
}
