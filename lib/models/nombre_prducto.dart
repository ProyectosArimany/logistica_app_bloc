class NombreProducto {
  const NombreProducto({required this.nombre});

  final String nombre;

  factory NombreProducto.fromJson(Map<String, dynamic> json) =>
      NombreProducto(nombre: json["nombre"]);

  Map<String, dynamic> toJson() => {"nombre": nombre};
}
