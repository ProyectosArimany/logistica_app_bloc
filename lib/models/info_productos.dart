class InfoProducto {
  InfoProducto({
    required this.id,
    required this.codigoUnico,
    required this.categoria,
    required this.subCategoria,
    required this.marca,
    required this.presentacion,
    required this.tamanio,
  });

  final int id;
  final String codigoUnico;
  final String categoria;
  final String subCategoria;
  final String marca;
  final String presentacion;
  final String tamanio;

  factory InfoProducto.fromJson(Map<String, dynamic> json) => InfoProducto(
        id: json["Id"],
        codigoUnico: json["CodigoUnico"],
        categoria: json["Categoria"],
        subCategoria: json["SubCategoria"],
        marca: json["Marca"],
        presentacion: json["Presentacion"],
        tamanio: json["tamanio"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "CodigoUnico": codigoUnico,
        "Categoria": categoria,
        "SubCategoria": subCategoria,
        "Marca": marca,
        "Presentacion": presentacion,
        "tamanio": tamanio,
      };
}
