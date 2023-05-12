class GetConteosQuery {
  DateTime? fechaDeInventario;
  String? codigoUnico;

  GetConteosQuery({
    required this.fechaDeInventario,
    required this.codigoUnico,
  });

  factory GetConteosQuery.fromJson(Map<String, dynamic> json) =>
      GetConteosQuery(
        fechaDeInventario: json["FechaDeInventario"],
        codigoUnico: json["CodigoUnico"],
      );

  Map<String, dynamic> toJson() => {
        "FechaDeInventario": fechaDeInventario,
        "CodigoUnico": codigoUnico,
      };
}
