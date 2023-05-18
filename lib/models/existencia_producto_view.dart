class ExistencaPorLoteView {
  int partition;
  String empresa;
  String itemId;
  String configId;
  String inventSizeId;
  String inventColorId;
  String inventStyleId;
  String almacen;
  String ubicacion;
  String lote;
  double disponible;
  String itemCode;
  String retailVariantId;

  ExistencaPorLoteView({
    required this.partition,
    required this.empresa,
    required this.itemId,
    required this.configId,
    required this.inventSizeId,
    required this.inventColorId,
    required this.inventStyleId,
    required this.almacen,
    required this.ubicacion,
    required this.lote,
    required this.disponible,
    required this.itemCode,
    required this.retailVariantId,
  });

  factory ExistencaPorLoteView.fromJson(Map<String, dynamic> json) =>
      ExistencaPorLoteView(
        partition: json["Partition"],
        empresa: json["Empresa"],
        itemId: json["ItemId"],
        configId: json["ConfigId"],
        inventSizeId: json["InventSizeId"],
        inventColorId: json["InventColorId"],
        inventStyleId: json["InventStyleId"],
        almacen: json["Almacen"],
        ubicacion: json["Ubicacion"],
        lote: json["Lote"],
        disponible: json["Disponible"]?.toDouble(),
        itemCode: json["ItemCode"],
        retailVariantId: json["RetailVariantId"],
      );

  static List<ExistencaPorLoteView> fromJsonList(List lista) => lista
      .map((e) => ExistencaPorLoteView.fromJson(e as Map<String, dynamic>))
      .toList();

  Map<String, dynamic> toJson() => {
        "Partition": partition,
        "Empresa": empresa,
        "ItemId": itemId,
        "ConfigId": configId,
        "InventSizeId": inventSizeId,
        "InventColorId": inventColorId,
        "InventStyleId": inventStyleId,
        "Almacen": almacen,
        "Ubicacion": ubicacion,
        "Lote": lote,
        "Disponible": disponible,
        "ItemCode": itemCode,
        "RetailVariantId": retailVariantId,
      };
}
