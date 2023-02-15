class NombreProducto {
  const NombreProducto({required this.nombre});

  final String nombre;

  factory NombreProducto.fromJson(Map<String, dynamic> json) =>
      NombreProducto(nombre: json["nombre"]);

  static List<NombreProducto> fromJsonList(List lista) => (lista)
      .map((i) => NombreProducto.fromJson(i as Map<String, dynamic>))
      .toList();

  Map<String, dynamic> toJson() => {"nombre": nombre};
}
