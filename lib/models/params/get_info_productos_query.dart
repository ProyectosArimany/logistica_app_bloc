class GetInfoProductosQuery {
  GetInfoProductosQuery({
    this.id,
    this.categoria,
    this.subCategoria,
    this.marca,
    this.presentacion,
    this.tamanio,
    this.codigoUnico,
    this.pageSize,
    this.pageNo,
  });

  final int? id;
  final int? categoria;
  final int? subCategoria;
  final int? marca;
  final int? presentacion;
  final int? tamanio;
  final String? codigoUnico;
  final int? pageSize;
  final int? pageNo;

  factory GetInfoProductosQuery.fromJson(Map<String, dynamic> json) =>
      GetInfoProductosQuery(
        id: json["Id"],
        categoria: json["Categoria"],
        subCategoria: json["SubCategoria"],
        marca: json["Marca"],
        presentacion: json["Presentacion"],
        tamanio: json["tamanio"],
        codigoUnico: json["CodigoUnico"],
        pageSize: json["PageSize"],
        pageNo: json["PageNo"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "Categoria": categoria,
        "SubCategoria": subCategoria,
        "Marca": marca,
        "Presentacion": presentacion,
        "tamanio": tamanio,
        "CodigoUnico": codigoUnico,
        "PageSize": pageSize,
        "PageNo": pageNo,
      };
}
