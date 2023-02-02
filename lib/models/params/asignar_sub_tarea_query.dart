class AsignarSubTareaQuery {
  AsignarSubTareaQuery({
    required this.empresa,
    required this.noTarea,
    required this.trabajador,
    required this.datoDeActividad,
    required this.ruta,
  });

  final String empresa;
  final int noTarea;
  final String trabajador;
  final String datoDeActividad;
  final int ruta;

  factory AsignarSubTareaQuery.fromJson(Map<String, dynamic> json) =>
      AsignarSubTareaQuery(
        empresa: json["Empresa"],
        noTarea: json["NoTarea"],
        trabajador: json["Trabajador"],
        datoDeActividad: json["DatoDeActividad"],
        ruta: json["Ruta"],
      );

  Map<String, dynamic> toJson() => {
        "Empresa": empresa,
        "NoTarea": noTarea,
        "Trabajador": trabajador,
        "DatoDeActividad": datoDeActividad,
        "Ruta": ruta,
      };
}
