import 'dart:convert';

ListaTareasQuery? listaTareasQueryFromJson(String str) =>
    ListaTareasQuery.fromJson(json.decode(str));

String listaTareasQueryToJson(ListaTareasQuery? data) =>
    json.encode(data!.toJson());

class ListaTareasQuery {
  ListaTareasQuery({
    required this.empresa,
    this.noTarea,
    this.descripcion,
    this.pageSize,
    this.pageNo,
  });

  String empresa;
  int? noTarea;
  String? descripcion;
  int? pageSize;
  int? pageNo;

  factory ListaTareasQuery.fromJson(Map<String, dynamic> json) =>
      ListaTareasQuery(
        empresa: json["Empresa"],
        noTarea: json["NoTarea"],
        descripcion: json["Descripcion"],
        pageSize: json["PageSize"],
        pageNo: json["PageNo"],
      );

  List<ListaTareasQuery> fromJsonList(List<Map<String, dynamic>> lista) =>
      lista.map((e) => ListaTareasQuery.fromJson(e)).toList();

  Map<String, dynamic> toJson() => {
        "Empresa": empresa,
        "NoTarea": noTarea,
        "Descripcion": descripcion,
        "PageSize": pageSize,
        "PageNo": pageNo,
      };
}
