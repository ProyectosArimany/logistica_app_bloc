class DeleteMovementAxBody {
  DeleteMovementAxBody({
    required this.domain,
    required this.user,
    required this.password,
    required this.company,
    required this.noDiario,
  });

  final String domain;
  final String user;
  final String password;
  final String company;
  final String noDiario;

  factory DeleteMovementAxBody.fromJson(Map<String, dynamic> json) =>
      DeleteMovementAxBody(
        domain: json["domain"],
        user: json["user"],
        password: json["password"],
        company: json["company"],
        noDiario: json["noDiario"],
      );

  Map<String, dynamic> toJson() => {
        "domain": domain,
        "user": user,
        "password": password,
        "company": company,
        "noDiario": noDiario,
      };
}
