class ListaTareasAsignadasQuery {
  ListaTareasAsignadasQuery({
    this.empresa,
    this.noTarea,
    this.descripcion,
    this.userId,
    this.pageSize,
    this.pageNo,
  });

  String? empresa;
  int? noTarea;
  String? descripcion;
  String? userId;
  int? pageSize;
  int? pageNo;

  factory ListaTareasAsignadasQuery.fromJson(Map<String, dynamic> json) =>
      ListaTareasAsignadasQuery(
        empresa: json["Empresa"],
        noTarea: json["NoTarea"],
        descripcion: json["Descripcion"],
        userId: json["UserId"],
        pageSize: json["PageSize"],
        pageNo: json["PageNo"],
      );

  Map<String, dynamic> toJson() => {
        "Empresa": empresa,
        "NoTarea": noTarea,
        "Descripcion": descripcion,
        "UserId": userId,
        "PageSize": pageSize,
        "PageNo": pageNo,
      };
}
