class QRBarCodeData {
  QRBarCodeData({
    required this.producto,
    required this.almacen,
    required this.ubicacion,
    required this.lote,
    required this.descripcion,
    required this.unidades,
    required this.imageName,
    required this.msgError,
  });

  String producto;
  String almacen;
  String ubicacion;
  String lote;
  String descripcion;
  double unidades;
  String imageName;
  String msgError;

  factory QRBarCodeData.fromJson(Map<String, dynamic> json) => QRBarCodeData(
        producto: json["producto"],
        almacen: json["almacen"],
        ubicacion: json["ubicacion"],
        lote: json["lote"],
        descripcion: json["descripcion"],
        unidades: json["unidades"]?.toDouble(),
        imageName: json["imageName"],
        msgError: json["msgError"],
      );

  Map<String, dynamic> toJson() => {
        "producto": producto,
        "almacen": almacen,
        "ubicacion": ubicacion,
        "lote": lote,
        "descripcion": descripcion,
        "unidades": unidades,
        "imageName": imageName,
        "msgError": msgError,
      };
}
