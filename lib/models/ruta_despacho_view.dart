class RutaDespachoView {
  RutaDespachoView({
    this.areaDeEmpaquetado,
    this.areaDeRevision,
    this.bodegaDestino,
    this.bodegaOrigen,
    this.empresa,
    this.fechaHoraCreacion,
    this.nombre,
    this.nombreAreaEmpaque,
    this.nombreAreaRevision,
    this.ruta,
    this.usuarioCreo,
    this.usuarioFactura,
    this.usuarioReserva,
  });

  int? areaDeEmpaquetado;
  int? areaDeRevision;
  String? bodegaDestino;
  String? bodegaOrigen;
  String? empresa;
  String? fechaHoraCreacion;
  String? nombre;
  String? nombreAreaEmpaque;
  String? nombreAreaRevision;
  int? ruta;
  String? usuarioCreo;
  String? usuarioFactura;
  String? usuarioReserva;

  factory RutaDespachoView.fromJson(Map<String, dynamic> json) =>
      RutaDespachoView(
        areaDeEmpaquetado: json["areaDeEmpaquetado"],
        areaDeRevision: json["areaDeRevision"],
        bodegaDestino: json["bodegaDestino"],
        bodegaOrigen: json["bodegaOrigen"],
        empresa: json["empresa"],
        fechaHoraCreacion: json["fechaHoraCreacion"],
        nombre: json["nombre"],
        nombreAreaEmpaque: json["nombreAreaEmpaque"],
        nombreAreaRevision: json["nombreAreaRevision"],
        ruta: json["ruta"],
        usuarioCreo: json["usuarioCreo"],
        usuarioFactura: json["usuarioFactura"],
        usuarioReserva: json["usuarioReserva"],
      );

  Map<String, dynamic> toJson() => {
        "areaDeEmpaquetado": areaDeEmpaquetado,
        "areaDeRevision": areaDeRevision,
        "bodegaDestino": bodegaDestino,
        "bodegaOrigen": bodegaOrigen,
        "empresa": empresa,
        "fechaHoraCreacion": fechaHoraCreacion,
        "nombre": nombre,
        "nombreAreaEmpaque": nombreAreaEmpaque,
        "nombreAreaRevision": nombreAreaRevision,
        "ruta": ruta,
        "usuarioCreo": usuarioCreo,
        "usuarioFactura": usuarioFactura,
        "usuarioReserva": usuarioReserva,
      };
}
