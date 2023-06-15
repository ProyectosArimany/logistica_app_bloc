class UbicacionConExistencia {
  final String codigoUnico;
  final String descripcionUnica;
  final String unidad;
  final double peso;
  final String ubicacion;
  final String lote;
  final String fila;
  final String posicion;
  final String nivel;
  final String anaquel;
  final double disponible;
  final String sitio;

  UbicacionConExistencia({
    required this.codigoUnico,
    required this.descripcionUnica,
    required this.unidad,
    required this.peso,
    required this.ubicacion,
    required this.lote,
    required this.fila,
    required this.posicion,
    required this.nivel,
    required this.anaquel,
    required this.disponible,
    required this.sitio,
  });

  factory UbicacionConExistencia.fromJson(Map<String, dynamic> json) =>
      UbicacionConExistencia(
        codigoUnico: json["CodigoUnico"],
        descripcionUnica: json["DescripcionUnica"],
        unidad: json["Unidad"],
        peso: json["Peso"]?.toDouble(),
        ubicacion: json["Ubicacion"],
        lote: json["Lote"],
        fila: json["Fila"],
        posicion: json["Posicion"],
        nivel: json["Nivel"],
        anaquel: json["Anaquel"],
        disponible: json["Disponible"]?.toDouble(),
        sitio: json["Sitio"],
      );

  static List<UbicacionConExistencia> fromJsonList(List list) => list
      .map((item) =>
          UbicacionConExistencia.fromJson(item as Map<String, dynamic>))
      .toList();

  Map<String, dynamic> toJson() => {
        "CodigoUnico": codigoUnico,
        "DescripcionUnica": descripcionUnica,
        "Unidad": unidad,
        "Peso": peso,
        "Ubicacion": ubicacion,
        "Lote": lote,
        "Fila": fila,
        "Posicion": posicion,
        "Nivel": nivel,
        "Anaquel": anaquel,
        "Disponible": disponible,
        "Sitio": sitio,
      };
}
