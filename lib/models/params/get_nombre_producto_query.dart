class GetNombreProductoQuery {
  const GetNombreProductoQuery({required this.codigoUnico});

  final String codigoUnico;

  Map<String, dynamic> toJson() => {"CodigoUnico": codigoUnico};
}
