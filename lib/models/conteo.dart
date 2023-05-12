class Conteos {
  String codigoUnico;
  double cantidadEnSistemas;
  String usuarioQueRealiza;
  String fechaDeInventario;
  int conteoCerrado;

  Conteos({
    required this.codigoUnico,
    required this.cantidadEnSistemas,
    required this.usuarioQueRealiza,
    required this.fechaDeInventario,
    required this.conteoCerrado,
  });

  factory Conteos.fromJson(Map<String, dynamic> json) => Conteos(
        codigoUnico: json["CodigoUnico"],
        cantidadEnSistemas: json["CantidadEnSistemas"]?.toDouble(),
        usuarioQueRealiza: json["UsuarioQueRealiza"],
        fechaDeInventario: json["FechaDeInventario"],
        conteoCerrado: json["ConteoCerrado"],
      );

  Map<String, dynamic> toJson() => {
        "CodigoUnico": codigoUnico,
        "CantidadEnSistemas": cantidadEnSistemas,
        "UsuarioQueRealiza": usuarioQueRealiza,
        "FechaDeInventario": fechaDeInventario,
        "ConteoCerrado": conteoCerrado,
      };
}
