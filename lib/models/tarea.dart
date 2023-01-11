class Tarea {
  Tarea({
    required this.empresa,
    required this.noTarea,
    required this.tipoDeTarea,
    required this.usuarioCreo,
    required this.descripcionDeTarea,
    required this.fechaHoraCreacion,
    required this.tiempoEstimadoEnMinutos,
  });

  final String empresa;
  final int noTarea;
  final int tipoDeTarea;
  final String usuarioCreo;
  final String fechaHoraCreacion;
  final String descripcionDeTarea;
  final String tiempoEstimadoEnMinutos;

  factory Tarea.fromJson(Map<String, dynamic> json) => Tarea(
        empresa: json["empresa"],
        noTarea: json["noTarea"],
        tipoDeTarea: json["tipoDeTarea"],
        usuarioCreo: json["usuarioCreo"],
        descripcionDeTarea: json["descripcionDeTarea"],
        fechaHoraCreacion: json["fechaHoraCreacion"],
        tiempoEstimadoEnMinutos: json["tiempoEstimadoEnMinutos"],
      );

  List<Tarea> fromJsonList(List<Map<String, dynamic>> lista) =>
      lista.map((tarea) => Tarea.fromJson(tarea)).toList();

  Map<String, dynamic> toJson() => {
        "empresa": empresa,
        "noTarea": noTarea,
        "tipoDeTarea": tipoDeTarea,
        "usuarioCreo": usuarioCreo,
        "descripcionDeTarea": descripcionDeTarea,
        "fechaHoraCreacion": fechaHoraCreacion,
        "tiempoEstimadoEnMinutos": tiempoEstimadoEnMinutos,
      };
}
