class GetAlmacenesQuery {
  const GetAlmacenesQuery({
    required this.empresa,
    this.almacen,
    this.nombre,
    this.pageSize,
    this.pageNo,
  });

  final String empresa;
  final String? almacen;
  final String? nombre;
  final int? pageSize;
  final int? pageNo;

  Map<String, dynamic> toJson() => {
        "Empresa": empresa,
        "Almacen": almacen,
        "Nombre": nombre,
        "PageSize": pageSize,
        "PageNo": pageNo,
      };
}
