class ListaRutasQuery {
  ListaRutasQuery({
    required this.empresa,
    this.ruta,
    this.nombre,
    this.estadoRuta,
    this.pageSize,
    this.pageNo,
  });

  String empresa;
  int? ruta;
  String? nombre;
  int? estadoRuta;
  int? pageSize;
  int? pageNo;

  factory ListaRutasQuery.fromJson(Map<String, dynamic> json) =>
      ListaRutasQuery(
        empresa: json["Empresa"],
        ruta: json["Ruta"],
        nombre: json["Nombre"],
        estadoRuta: json["EstadoRuta"],
        pageSize: json["PageSize"],
        pageNo: json["PageNo"],
      );

  Map<String, dynamic> toJson() => {
        "Empresa": empresa,
        "Ruta": ruta,
        "Nombre": nombre,
        "EstadoRuta": estadoRuta,
        "PageSize": pageSize,
        "PageNo": pageNo,
      };
}
