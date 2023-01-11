class CrearTareaQuery {
  CrearTareaQuery({
    this.empresa,
    this.noTarea,
    this.tipoDeTarea,
    this.tiempoEstimadoHoras,
    this.descripcion,
  });

  String? empresa;
  int? noTarea;
  int? tipoDeTarea;
  int? tiempoEstimadoHoras;
  String? descripcion;

  factory CrearTareaQuery.fromJson(Map<String, dynamic> json) =>
      CrearTareaQuery(
        empresa: json["Empresa"],
        noTarea: json["NoTarea"],
        tipoDeTarea: json["TipoDeTarea"],
        tiempoEstimadoHoras: json["TiempoEstimadoHoras"],
        descripcion: json["Descripcion"],
      );

  Map<String, dynamic> toJson() => {
        "Empresa": empresa,
        "NoTarea": noTarea,
        "TipoDeTarea": tipoDeTarea,
        "TiempoEstimadoHoras": tiempoEstimadoHoras,
        "Descripcion": descripcion,
      };
}
