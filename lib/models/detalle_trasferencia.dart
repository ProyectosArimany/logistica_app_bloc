class DetalleTransferencia {
  DetalleTransferencia({
    this.codigoUnico = "",
    this.sitio = "",
    this.almacen = "",
    this.ubicacion = "",
    this.lote = "",
    this.dimensionFinanciera = "",
    this.sitioDestino = "",
    this.almacenDestino = "",
    this.ubicacionDestino = "",
    this.loteDestino = "",
    this.cantidad = 0,
    this.costoUnitario = "",
  });

  final String codigoUnico;
  final String sitio;
  final String almacen;
  final String ubicacion;
  final String lote;
  final String dimensionFinanciera;
  final String sitioDestino;
  final String almacenDestino;
  final String ubicacionDestino;
  final String loteDestino;
  final int cantidad;
  final String costoUnitario;

  factory DetalleTransferencia.fromJson(Map<String, dynamic> json) =>
      DetalleTransferencia(
        codigoUnico: json["CodigoUnico"],
        sitio: json["Sitio"],
        almacen: json["Almacen"],
        ubicacion: json["Ubicacion"],
        lote: json["Lote"],
        dimensionFinanciera: json["DimensionFinanciera"],
        sitioDestino: json["SitioDestino"],
        almacenDestino: json["AlmacenDestino"],
        ubicacionDestino: json["UbicacionDestino"],
        loteDestino: json["LoteDestino"],
        cantidad: json["Cantidad"],
        costoUnitario: json["CostoUnitario"],
      );

  Map<String, dynamic> toJson() => {
        "CodigoUnico": codigoUnico,
        "Sitio": sitio,
        "Almacen": almacen,
        "Ubicacion": ubicacion,
        "Lote": lote,
        "DimensionFinanciera": dimensionFinanciera,
        "SitioDestino": sitioDestino,
        "AlmacenDestino": almacenDestino,
        "UbicacionDestino": ubicacionDestino,
        "LoteDestino": loteDestino,
        "Cantidad": cantidad.toStringAsFixed(2),
        "CostoUnitario": costoUnitario,
      };
}
