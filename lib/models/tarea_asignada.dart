class TareaAsignada {
  TareaAsignada({
    required this.empresa,
    required this.userId,
    required this.noTarea,
    required this.descripcionDeTarea,
    required this.tipoTarea,
    required this.estadoTarea,
    required this.descripcionEstado,
    required this.claseActividad,
    required this.responsable,
    required this.fechaYhoraAsignacion,
    required this.fechaYHoraInicioTarea,
    required this.fechaYHoraDeFinalizacion,
  });

  String empresa;
  String userId;
  int noTarea;
  int descripcionDeTarea;
  String tipoTarea;
  int estadoTarea;
  String descripcionEstado;
  int claseActividad;
  String responsable;
  String fechaYhoraAsignacion;
  String fechaYHoraInicioTarea;
  String fechaYHoraDeFinalizacion;

  factory TareaAsignada.fromJson(Map<String, dynamic> json) => TareaAsignada(
        empresa: json["empresa"],
        userId: json["userId"],
        noTarea: json["noTarea"],
        descripcionDeTarea: json["descripcionDeTarea"],
        tipoTarea: json["tipoTarea"],
        estadoTarea: json["estadoTarea"],
        descripcionEstado: json["descripcionEstado"],
        claseActividad: json["claseActividad"],
        responsable: json["responsable"],
        fechaYhoraAsignacion: json["fechaYhoraAsignacion"],
        fechaYHoraInicioTarea: json["fechaYHoraInicioTarea"],
        fechaYHoraDeFinalizacion: json["fechaYHoraDeFinalizacion"],
      );

  List<TareaAsignada> fromJsonList(List<Map<String, dynamic>> lista) =>
      lista.map((tarea) => TareaAsignada.fromJson(tarea)).toList();

  Map<String, dynamic> toJson() => {
        "empresa": empresa,
        "userId": userId,
        "noTarea": noTarea,
        "descripcionDeTarea": descripcionDeTarea,
        "tipoTarea": tipoTarea,
        "estadoTarea": estadoTarea,
        "descripcionEstado": descripcionEstado,
        "claseActividad": claseActividad,
        "responsable": responsable,
        "fechaYhoraAsignacion": fechaYhoraAsignacion,
        "fechaYHoraInicioTarea": fechaYHoraInicioTarea,
        "fechaYHoraDeFinalizacion": fechaYHoraDeFinalizacion,
      };
}
