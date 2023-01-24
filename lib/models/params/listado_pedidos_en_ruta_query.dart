class ListadoPedidosEnRutaQuery {
  ListadoPedidosEnRutaQuery({
    required this.empresa,
    this.rutaInicial,
    this.rutaFinal,
    this.pageSize,
    this.pageNo,
  });

  String empresa;
  int? rutaInicial;
  int? rutaFinal;
  int? pageSize;
  int? pageNo;

  factory ListadoPedidosEnRutaQuery.fromJson(Map<String, dynamic> json) =>
      ListadoPedidosEnRutaQuery(
        empresa: json["Empresa"],
        rutaInicial: json["RutaInicial"],
        rutaFinal: json["RutaFinal"],
        pageSize: json["PageSize"],
        pageNo: json["PageNo"],
      );

  Map<String, dynamic> toJson() => {
        "Empresa": empresa,
        "RutaInicial": rutaInicial,
        "RutaFinal": rutaFinal,
        "PageSize": pageSize,
        "PageNo": pageNo,
      };
}
