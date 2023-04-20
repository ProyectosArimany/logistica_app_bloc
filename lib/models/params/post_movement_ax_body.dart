class PostMovementAxBody {
  PostMovementAxBody({
    required this.empresa,
    required this.noDiario,
    required this.borrarSiHayError,
  });

  final String empresa;
  final String noDiario;
  final bool borrarSiHayError;

  factory PostMovementAxBody.fromJson(Map<String, dynamic> json) =>
      PostMovementAxBody(
        empresa: json["empresa"],
        noDiario: json["noDiario"],
        borrarSiHayError: json["borrarSiHayError"],
      );

  Map<String, dynamic> toJson() => {
        "Empresa": empresa,
        "NoDiario": noDiario,
        "borrarSiHayError": borrarSiHayError,
      };
}
