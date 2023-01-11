class AsignarTareaQuery {
  AsignarTareaQuery({
    required this.empresa,
    required this.noTarea,
    required this.userId,
  });

  String empresa;
  int noTarea;
  String userId;

  factory AsignarTareaQuery.fromJson(Map<String, dynamic> json) =>
      AsignarTareaQuery(
        empresa: json["Empresa"],
        noTarea: json["NoTarea"],
        userId: json["UserId"],
      );

  Map<String, dynamic> toJson() => {
        "Empresa": empresa,
        "NoTarea": noTarea,
        "UserId": userId,
      };
}
