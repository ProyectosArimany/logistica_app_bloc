class GetAlmacenesQuery {
  const GetAlmacenesQuery({required this.empresa, this.almacen});

  final String empresa;
  final String? almacen;

  Map<String, dynamic> toJson() => {"Empresa": empresa, "Almacen": almacen};
}
