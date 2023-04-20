class DeleteMovementAxBody {
  DeleteMovementAxBody({
    required this.empresa,
    required this.noDiario,
  });

  final String empresa;
  final String noDiario;

  factory DeleteMovementAxBody.fromJson(Map<String, dynamic> json) =>
      DeleteMovementAxBody(
        empresa: json["empresa"],
        noDiario: json["noDiario"],
      );

  Map<String, dynamic> toJson() => {
        "Empresa": empresa,
        "NoDiario": noDiario,
      };
}
