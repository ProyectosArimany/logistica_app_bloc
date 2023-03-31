import 'package:json_annotation/json_annotation.dart';

part 'catalogo_articulos.g.dart';

@JsonSerializable()
class CatalogoArticulos {
  CatalogoArticulos(this.codigoUnico, this.descripcionUnica, this.unidad,
      this.tipoProducto, this.imageName, this.barCodeGTIN, this.barCode);

  @JsonKey(name: "ItemCode")
  final String codigoUnico;
  @JsonKey(name: "DescripcionUnica")
  final String descripcionUnica;
  @JsonKey(name: "Unidad")
  final String unidad;
  @JsonKey(name: "TipoProducto")
  final String tipoProducto;
  @JsonKey(name: "ImageName")
  final String imageName;
  @JsonKey(name: "BarCodeGTIN")
  final String barCodeGTIN;
  @JsonKey(name: "BarCode")
  final String barCode;

  factory CatalogoArticulos.fromJson(Map<String, dynamic> json) =>
      _$CatalogoArticulosFromJson(json);

  static List<CatalogoArticulos> fromJsonList(List lista) => lista
      .map((e) => CatalogoArticulos.fromJson(e as Map<String, dynamic>))
      .toList();

  Map<String, dynamic> toJson() => _$CatalogoArticulosToJson(this);
}
