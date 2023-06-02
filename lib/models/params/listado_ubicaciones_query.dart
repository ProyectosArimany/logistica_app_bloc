class ListadoDeUbicacionesQuery {
  final String empresa;
  final String almacen;
  final String ubicacion;
  final String codigoUnico;
  final String descripcionUnica;
  final String v1;
  final String v2;
  final String v3;
  final String v4;
  final String categoria;
  final String subCategoria;
  final String marca;
  final String size;
  final int tipoListado;
  final int pageSize;
  final int pageNo;

  ListadoDeUbicacionesQuery({
    required this.empresa,
    this.almacen = "%",
    this.ubicacion = "%",
    this.codigoUnico = "%",
    this.descripcionUnica = "%",
    this.v1 = "%",
    this.v2 = "%",
    this.v3 = "%",
    this.v4 = "%",
    this.categoria = "%",
    this.subCategoria = "%",
    this.marca = "%",
    this.size = "%",
    this.tipoListado = 0,
    this.pageSize = 20,
    required this.pageNo,
  });

  factory ListadoDeUbicacionesQuery.fromJson(Map<String, dynamic> json) =>
      ListadoDeUbicacionesQuery(
        empresa: json["Empresa"],
        almacen: json["Almacen"],
        ubicacion: json["Ubicacion"],
        codigoUnico: json["CodigoUnico"],
        descripcionUnica: json["DescripcionUnica"],
        v1: json["V1"],
        v2: json["V2"],
        v3: json["V3"],
        v4: json["V4"],
        categoria: json["Categoria"],
        subCategoria: json["SubCategoria"],
        marca: json["Marca"],
        size: json["Size"],
        tipoListado: json["TipoListado"],
        pageSize: json["PageSize"],
        pageNo: json["PageNo"],
      );

  Map<String, dynamic> toJson() => {
        "Empresa": empresa,
        "Almacen": almacen,
        "Ubicacion": ubicacion,
        "CodigoUnico": codigoUnico,
        "DescripcionUnica": descripcionUnica,
        "V1": v1,
        "V2": v2,
        "V3": v3,
        "V4": v4,
        "Categoria": categoria,
        "SubCategoria": subCategoria,
        "Marca": marca,
        "Size": size,
        "TipoListado": tipoListado,
        "PageSize": pageSize,
        "PageNo": pageNo,
      };
}
