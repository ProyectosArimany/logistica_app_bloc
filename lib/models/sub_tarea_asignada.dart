class SubTareaAsignada {
  SubTareaAsignada({
    required this.empresa,
    required this.noTarea,
    required this.noSubTarea,
    required this.userId,
    required this.estadoSubTarea,
    required this.usuarioAsigno,
    required this.ruta,
    required this.datoDeActividad,
  });

  final String empresa;
  final int noTarea;
  final int noSubTarea;
  final String userId;
  final int estadoSubTarea;
  final String usuarioAsigno;
  final int ruta;
  final String datoDeActividad;

  factory SubTareaAsignada.fromJson(Map<String, dynamic> json) =>
      SubTareaAsignada(
        empresa: json["empresa"],
        noTarea: json["noTarea"],
        noSubTarea: json["noSubTarea"],
        userId: json["userId"],
        estadoSubTarea: json["estadoSubTarea"],
        usuarioAsigno: json["usuarioAsigno"],
        ruta: json["ruta"],
        datoDeActividad: json["datoDeActividad"],
      );

  Map<String, dynamic> toJson() => {
        "empresa": empresa,
        "noTarea": noTarea,
        "noSubTarea": noSubTarea,
        "userId": userId,
        "estadoSubTarea": estadoSubTarea,
        "usuarioAsigno": usuarioAsigno,
        "ruta": ruta,
        "datoDeActividad": datoDeActividad,
      };
}
