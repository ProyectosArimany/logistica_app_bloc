class ListadoSubTareasQuery {
  ListadoSubTareasQuery({
    required this.empresa,
    this.noTarea,
    this.tipoTarea,
    this.ruta,
    this.incluirCanceladas,
    this.noSubTarea,
    this.descripcion,
    this.userId,
    this.pageSize,
    this.pageNo,
  });

  final String empresa;
  final int? noTarea;
  final int? tipoTarea;
  final int? ruta;
  final bool? incluirCanceladas;
  final int? noSubTarea;
  final String? descripcion;
  final String? userId;
  final int? pageSize;
  final int? pageNo;

  factory ListadoSubTareasQuery.fromJson(Map<String, dynamic> json) =>
      ListadoSubTareasQuery(
        empresa: json["Empresa"],
        noTarea: json["NoTarea"],
        tipoTarea: json["TipoTarea"],
        ruta: json["Ruta"],
        incluirCanceladas: json["IncluirCanceladas"],
        noSubTarea: json["NoSubTarea"],
        descripcion: json["Descripcion"],
        userId: json["UserId"],
        pageSize: json["PageSize"],
        pageNo: json["PageNo"],
      );

  Map<String, dynamic> toJson() => {
        "Empresa": empresa,
        "NoTarea": noTarea,
        "TipoTarea": tipoTarea,
        "Ruta": ruta,
        "IncluirCanceladas": incluirCanceladas,
        "NoSubTarea": noSubTarea,
        "Descripcion": descripcion,
        "UserId": userId,
        "PageSize": pageSize,
        "PageNo": pageNo,
      };
}
