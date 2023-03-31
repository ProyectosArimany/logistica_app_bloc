// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogo_articulos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogoArticulos _$CatalogoArticulosFromJson(Map<String, dynamic> json) =>
    CatalogoArticulos(
      json['ItemCode'] as String,
      json['DescripcionUnica'] as String,
      json['Unidad'] as String,
      json['TipoProducto'] as String,
      json['ImageName'] as String,
      json['BarCodeGTIN'] as String,
      json['BarCode'] as String,
    );

Map<String, dynamic> _$CatalogoArticulosToJson(CatalogoArticulos instance) =>
    <String, dynamic>{
      'ItemCode': instance.codigoUnico,
      'DescripcionUnica': instance.descripcionUnica,
      'Unidad': instance.unidad,
      'TipoProducto': instance.tipoProducto,
      'ImageName': instance.imageName,
      'BarCodeGTIN': instance.barCodeGTIN,
      'BarCode': instance.barCode,
    };
