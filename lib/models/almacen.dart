class Almacen {
  Almacen({
    required this.almacen,
    required this.nombre,
    required this.usaAnaquel,
    required this.sitio,
  });

  final String almacen;
  final String nombre;
  final bool usaAnaquel;
  final String sitio;

  factory Almacen.fromJson(Map<String, dynamic> json) => Almacen(
        almacen: json["almacen"],
        nombre: json["nombre"],
        usaAnaquel: json["usaAnaquel"],
        sitio: json["sitio"],
      );

  static List<Almacen> fromJsonList(List lista) =>
      lista.map((e) => Almacen.fromJson(e as Map<String, dynamic>)).toList();

  Map<String, dynamic> toJson() => {
        "almacen": almacen,
        "nombre": nombre,
        "usaAnaquel": usaAnaquel,
        "sitio": sitio,
      };
}
