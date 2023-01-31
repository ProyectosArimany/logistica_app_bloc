class TareaView {
  TareaView({
    required this.empresa,
    required this.noTarea,
    required this.tipoDeTarea,
    required this.usuarioCreo,
    required this.descripcionDeTarea,
    required this.tiempoEstimadoEnMinutos,
    required this.responsable,
    required this.estadoTarea,
  });

  String empresa;
  int noTarea;
  int tipoDeTarea;
  String usuarioCreo;
  String descripcionDeTarea;
  int tiempoEstimadoEnMinutos;
  String responsable;
  int estadoTarea;

  factory TareaView.fromJson(Map<String, dynamic> json) => TareaView(
        empresa: json["empresa"],
        noTarea: json["noTarea"],
        tipoDeTarea: json["tipoDeTarea"],
        usuarioCreo: json["usuarioCreo"],
        descripcionDeTarea: json["descripcionDeTarea"],
        tiempoEstimadoEnMinutos: json["tiempoEstimadoEnMinutos"],
        responsable: json["responsable"],
        estadoTarea: json["estadoTarea"],
      );

  static List<TareaView> fromJsonList(List lista) => lista
      .map((tarea) => TareaView.fromJson(tarea as Map<String, dynamic>))
      .toList();

  Map<String, dynamic> toJson() => {
        "empresa": empresa,
        "noTarea": noTarea,
        "tipoDeTarea": tipoDeTarea,
        "usuarioCreo": usuarioCreo,
        "descripcionDeTarea": descripcionDeTarea,
        "tiempoEstimadoEnMinutos": tiempoEstimadoEnMinutos,
        "responsable": responsable,
        "estadoTarea": estadoTarea,
      };
}
