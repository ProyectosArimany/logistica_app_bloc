part of 'contar_productos_bloc.dart';

class ContarProductosEvent {}

class ScanQRDoneOrigenEvent extends ContarProductosEvent {
  ScanQRDoneOrigenEvent({required this.data, required this.token});

  final QRBarCodeData data;
  final String token;
}

class ScanQRDoneDestinoEvent extends ContarProductosEvent {
  ScanQRDoneDestinoEvent({required this.data});

  final QRBarCodeData data;
}
