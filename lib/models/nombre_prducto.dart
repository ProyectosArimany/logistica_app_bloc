class NombreProducto {
  const NombreProducto({required this.nombre});

  final String nombre;

  factory NombreProducto.fromJson(Map<String, dynamic> json) =>
      NombreProducto(nombre: json["nombre"]);

  static List<NombreProducto> fromJsonList(dynamic lista) =>
      (lista as List<Map<String, dynamic>>)
          .map((i) => NombreProducto.fromJson(i))
          .toList();

  Map<String, dynamic> toJson() => {"nombre": nombre};
}
