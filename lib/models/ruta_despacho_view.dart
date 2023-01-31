class RutaDespachoView {
  RutaDespachoView({
    required this.areaDeEmpaquetado,
    required this.areaDeRevision,
    required this.bodegaDestino,
    required this.bodegaOrigen,
    required this.empresa,
    required this.fechaHoraCreacion,
    required this.nombre,
    required this.nombreAreaEmpaque,
    required this.nombreAreaRevision,
    required this.ruta,
    required this.usuarioCreo,
    required this.usuarioFactura,
    required this.usuarioReserva,
  });

  int areaDeEmpaquetado;
  int areaDeRevision;
  String bodegaDestino;
  String bodegaOrigen;
  String empresa;
  String fechaHoraCreacion;
  String nombre;
  String nombreAreaEmpaque;
  String nombreAreaRevision;
  int ruta;
  String usuarioCreo;
  String usuarioFactura;
  String usuarioReserva;

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
