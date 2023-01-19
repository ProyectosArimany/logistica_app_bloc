class PedidoEnRuta {
  PedidoEnRuta({
    this.orden,
    this.ruta,
    this.nombre,
    this.empresa,
    this.pedido,
    this.factura,
    this.nombreEmpleado,
    this.razonSocial,
    this.direccion,
    this.pais,
    this.departamento,
    this.municipio,
    this.condicionEntrega,
    this.fecha,
    this.fechaRecepcionSolicitada,
    this.latitud,
    this.longitud,
    this.toneladas,
    this.completado,
    this.cantidadPedida,
    this.monto,
    this.reserva,
  });

  int? orden;
  int? ruta;
  String? nombre;
  String? empresa;
  String? pedido;
  String? factura;
  String? nombreEmpleado;
  String? razonSocial;
  String? direccion;
  String? pais;
  String? departamento;
  String? municipio;
  String? condicionEntrega;
  String? fecha;
  String? fechaRecepcionSolicitada;
  int? latitud;
  int? longitud;
  int? toneladas;
  int? completado;
  int? cantidadPedida;
  int? monto;
  int? reserva;

  factory PedidoEnRuta.fromJson(Map<String, dynamic> json) => PedidoEnRuta(
        orden: json["orden"],
        ruta: json["ruta"],
        nombre: json["nombre"],
        empresa: json["empresa"],
        pedido: json["pedido"],
        factura: json["factura"],
        nombreEmpleado: json["nombreEmpleado"],
        razonSocial: json["razonSocial"],
        direccion: json["direccion"],
        pais: json["pais"],
        departamento: json["departamento"],
        municipio: json["municipio"],
        condicionEntrega: json["condicionEntrega"],
        fecha: json["fecha"],
        fechaRecepcionSolicitada: json["fechaRecepcionSolicitada"],
        latitud: json["latitud"],
        longitud: json["longitud"],
        toneladas: json["toneladas"],
        completado: json["completado"],
        cantidadPedida: json["cantidadPedida"],
        monto: json["monto"],
        reserva: json["reserva"],
      );

  Map<String, dynamic> toJson() => {
        "orden": orden,
        "ruta": ruta,
        "nombre": nombre,
        "empresa": empresa,
        "pedido": pedido,
        "factura": factura,
        "nombreEmpleado": nombreEmpleado,
        "razonSocial": razonSocial,
        "direccion": direccion,
        "pais": pais,
        "departamento": departamento,
        "municipio": municipio,
        "condicionEntrega": condicionEntrega,
        "fecha": fecha,
        "fechaRecepcionSolicitada": fechaRecepcionSolicitada,
        "latitud": latitud,
        "longitud": longitud,
        "toneladas": toneladas,
        "completado": completado,
        "cantidadPedida": cantidadPedida,
        "monto": monto,
        "reserva": reserva,
      };
}
