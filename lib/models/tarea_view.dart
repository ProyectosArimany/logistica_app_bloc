class TareaView {
  TareaView({
    this.empresa,
    this.noTarea,
    this.tipoDeTarea,
    this.usuarioCreo,
    this.descripcionDeTarea,
    this.tiempoEstimadoEnMinutos,
    this.responsable,
    this.estadoTarea,
  });

  String? empresa;
  int? noTarea;
  int? tipoDeTarea;
  String? usuarioCreo;
  String? descripcionDeTarea;
  String? tiempoEstimadoEnMinutos;
  String? responsable;
  int? estadoTarea;

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

  static List<TareaView> fromJsonList(List<Map<String, dynamic>> lista) =>
      lista.map((tarea) => TareaView.fromJson(tarea)).toList();

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
