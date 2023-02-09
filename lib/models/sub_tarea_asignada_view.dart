import 'dart:convert';

class SubTareaAsignadaView {
  SubTareaAsignadaView({
    required this.empresa,
    required this.userId,
    required this.noTarea,
    required this.noSubTarea,
    required this.descripcionDeTarea,
    required this.tipoTarea,
    required this.fechaYhoraAsignacion,
    required this.fechaYHoraInicioTarea,
    required this.fechaYHoraDeFinalizacion,
    required this.estadoSubTarea,
    required this.descripcionEstado,
    required this.claseActividad,
    required this.operador,
    required this.ruta,
    required this.datoDeActividad,
  });

  final String empresa;
  final String userId;
  final int noTarea;
  final int noSubTarea;
  final String descripcionDeTarea;
  final String tipoTarea;
  final String fechaYhoraAsignacion;
  final String fechaYHoraInicioTarea;
  final String fechaYHoraDeFinalizacion;
  final int estadoSubTarea;
  final String descripcionEstado;
  final int claseActividad;
  final String operador;
  final int ruta;
  final Map<String, dynamic> datoDeActividad;

  factory SubTareaAsignadaView.fromJson(Map<String, dynamic> json) =>
      SubTareaAsignadaView(
        empresa: json["empresa"],
        userId: json["userId"],
        noTarea: json["noTarea"],
        noSubTarea: json["noSubTarea"],
        descripcionDeTarea: json["descripcionDeTarea"],
        tipoTarea: json["tipoTarea"],
        fechaYhoraAsignacion: json["fechaYhoraAsignacion"],
        fechaYHoraInicioTarea: json["fechaYHoraInicioTarea"],
        fechaYHoraDeFinalizacion: json["fechaYHoraDeFinalizacion"],
        estadoSubTarea: json["estadoSubTarea"],
        descripcionEstado: json["descripcionEstado"],
        claseActividad: json["claseActividad"],
        operador: json["operador"],
        ruta: json["ruta"],
        datoDeActividad: jsonDecode(json["datoDeActividad"]),
      );

  static List<SubTareaAsignadaView> fromJsonList(List lista) => lista
      .map((e) => SubTareaAsignadaView.fromJson(e as Map<String, dynamic>))
      .toList();

  Map<String, dynamic> toJson() => {
        "empresa": empresa,
        "userId": userId,
        "noTarea": noTarea,
        "noSubTarea": noSubTarea,
        "descripcionDeTarea": descripcionDeTarea,
        "tipoTarea": tipoTarea,
        "fechaYhoraAsignacion": fechaYhoraAsignacion,
        "fechaYHoraInicioTarea": fechaYHoraInicioTarea,
        "fechaYHoraDeFinalizacion": fechaYHoraDeFinalizacion,
        "estadoSubTarea": estadoSubTarea,
        "descripcionEstado": descripcionEstado,
        "claseActividad": claseActividad,
        "operador": operador,
        "ruta": ruta,
        "datoDeActividad": datoDeActividad,
      };
}
