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
        partition: json["partition"],
        empresa: json["empresa"],
        itemId: json["itemId"],
        configId: json["configId"],
        inventSizeId: json["inventSizeId"],
        inventColorId: json["inventColorId"],
        inventStyleId: json["inventStyleId"],
        almacen: json["almacen"],
        ubicacion: json["abicacion"],
        lote: json["lote"],
        disponible: json["disponible"]?.toDouble(),
        itemCode: json["itemCode"],
        retailVariantId: json["retailVariantId"],
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
