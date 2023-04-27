import 'dart:convert';

import 'package:logistica_app_bloc/models/params/detalle_trasferencia.dart';
import 'package:logistica_app_bloc/models/params/header_transferencia.dart';

class CreateMovementAxBody {
  CreateMovementAxBody({
    required this.empresa,
    required this.encabezado,
    required this.detalle,
    required this.registrarDiario,
    required this.borrarSiHayError,
  });

  final String empresa;
  final HeaderTransferencia encabezado;
  final DetalleTransferencia detalle;
  final bool registrarDiario;
  final bool borrarSiHayError;

  factory CreateMovementAxBody.fromJson(Map<String, dynamic> json) =>
      CreateMovementAxBody(
        empresa: json["company"],
        encabezado:
            HeaderTransferencia.fromJson(jsonDecode(json["encabezado"])),
        detalle: DetalleTransferencia.fromJson(jsonDecode(json["detalle"])),
        registrarDiario: json["registrarDiario"],
        borrarSiHayError: json["borrarSiHayError"],
      );

  Map<String, dynamic> toJson() => {
        "Empresa": empresa,
        "Encabezado": jsonEncode(encabezado.toJson()),
        "Detalle": jsonEncode(detalle.toJson()),
        "RegistrarDiario": registrarDiario,
        "BorrarSiHayError": borrarSiHayError,
      };
}
