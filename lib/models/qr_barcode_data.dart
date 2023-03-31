class QRBarCodeData {
  String producto;
  String almacen;
  String ubicacion;
  String lote;
  String descripcion;
  double unidades;
  String imageName;
  String msgError = "";

  QRBarCodeData(this.producto, this.almacen, this.ubicacion, this.lote,
      this.descripcion, this.imageName, this.unidades);
}
