class CambiarEstadoSubTareaAsignadaQuery {
  CambiarEstadoSubTareaAsignadaQuery({
    required this.empresa,
    required this.noTarea,
    required this.noSubTarea,
    required this.estado,
  });

  final String empresa;
  final int noTarea;
  final int noSubTarea;
  final int estado;

  factory CambiarEstadoSubTareaAsignadaQuery.fromJson(
          Map<String, dynamic> json) =>
      CambiarEstadoSubTareaAsignadaQuery(
        empresa: json["Empresa"],
        noTarea: json["NoTarea"],
        noSubTarea: json["NoSubTarea"],
        estado: json["Estado"],
      );

  Map<String, dynamic> toJson() => {
        "Empresa": empresa,
        "NoTarea": noTarea,
        "NoSubTarea": noSubTarea,
        "Estado": estado,
      };
}
