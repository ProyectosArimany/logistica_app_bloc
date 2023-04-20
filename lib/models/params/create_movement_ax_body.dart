class CreateMovementAxBody {
  CreateMovementAxBody({
    required this.empresa,
    required this.encabezado,
    required this.detalle,
    required this.registrarDiario,
    required this.borrarSiHayError,
  });

  final String empresa;
  final String encabezado;
  final String detalle;
  final bool registrarDiario;
  final bool borrarSiHayError;

  factory CreateMovementAxBody.fromJson(Map<String, dynamic> json) =>
      CreateMovementAxBody(
        empresa: json["company"],
        encabezado: json["encabezado"],
        detalle: json["detalle"],
        registrarDiario: json["registrarDiario"],
        borrarSiHayError: json["borrarSiHayError"],
      );

  Map<String, dynamic> toJson() => {
        "Empresa": empresa,
        "Encabezado": encabezado,
        "Detalle": detalle,
        "RegistrarDiario": registrarDiario,
        "BorrarSiHayError": borrarSiHayError,
      };
}
