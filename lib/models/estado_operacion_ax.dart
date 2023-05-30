class EstadoOperacionAX {
  const EstadoOperacionAX(
      {required this.statusOK,
      required this.msgError,
      required this.serviceResponse});

  final bool statusOK;
  final String msgError;
  final String serviceResponse;

  factory EstadoOperacionAX.fromJson(Map json) => EstadoOperacionAX(
        statusOK: json["statusOk"],
        msgError: json["msgError"],
        serviceResponse: json["serviceResponse"],
      );
}
