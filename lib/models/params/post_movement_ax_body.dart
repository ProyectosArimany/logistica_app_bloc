class PostMovementAxBody {
  PostMovementAxBody({
    required this.domain,
    required this.user,
    required this.password,
    required this.company,
    required this.noDiario,
    required this.borrarSiHayError,
  });

  final String domain;
  final String user;
  final String password;
  final String company;
  final String noDiario;
  final bool borrarSiHayError;

  factory PostMovementAxBody.fromJson(Map<String, dynamic> json) =>
      PostMovementAxBody(
        domain: json["domain"],
        user: json["user"],
        password: json["password"],
        company: json["company"],
        noDiario: json["noDiario"],
        borrarSiHayError: json["borrarSiHayError"],
      );

  Map<String, dynamic> toJson() => {
        "domain": domain,
        "user": user,
        "password": password,
        "company": company,
        "noDiario": noDiario,
        "borrarSiHayError": borrarSiHayError,
      };
}
