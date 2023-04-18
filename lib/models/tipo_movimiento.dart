class TiposDeMovimiento {
  TiposDeMovimiento({
    required this.diario,
    required this.descripcion,
    required this.tipoMovimiento,
    required this.cuentaContable,
  });

  final String diario;
  final String descripcion;
  final int tipoMovimiento;
  final String cuentaContable;

  factory TiposDeMovimiento.fromJson(Map<String, dynamic> json) =>
      TiposDeMovimiento(
        diario: json["diario"],
        descripcion: json["descripcion"],
        tipoMovimiento: json["tipoMovimiento"],
        cuentaContable: json["cuentaContable"],
      );

  static List<TiposDeMovimiento> fromJsonList(List lista) => lista
      .map((e) => TiposDeMovimiento.fromJson(e as Map<String, dynamic>))
      .toList();

  Map<String, dynamic> toJson() => {
        "diario": diario,
        "descripcion": descripcion,
        "tipoMovimiento": tipoMovimiento,
        "cuentaContable": cuentaContable,
      };
}
