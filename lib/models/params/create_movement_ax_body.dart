class CreateMovementAxBody {
  CreateMovementAxBody({
    required this.domain,
    required this.user,
    required this.password,
    required this.company,
    required this.encabezado,
    required this.detalle,
    required this.registrarDiario,
    required this.borrarSiHayError,
  });

  final String domain;
  final String user;
  final String password;
  final String company;
  final String encabezado;
  final String detalle;
  final bool registrarDiario;
  final bool borrarSiHayError;

  factory CreateMovementAxBody.fromJson(Map<String, dynamic> json) =>
      CreateMovementAxBody(
        domain: json["domain"],
        user: json["user"],
        password: json["password"],
        company: json["company"],
        encabezado: json["encabezado"],
        detalle: json["detalle"],
        registrarDiario: json["registrarDiario"],
        borrarSiHayError: json["borrarSiHayError"],
      );

  Map<String, dynamic> toJson() => {
        "domain": domain,
        "user": user,
        "password": password,
        "company": company,
        "encabezado": encabezado,
        "detalle": detalle,
        "registrarDiario": registrarDiario,
        "borrarSiHayError": borrarSiHayError,
      };
}
