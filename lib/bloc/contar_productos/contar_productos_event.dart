part of 'contar_productos_bloc.dart';

class ContarProductosEvent {
  const ContarProductosEvent();
}

class ScanQRDoneEvent extends ContarProductosEvent {
  const ScanQRDoneEvent({required this.data, required this.token});

  final QRBarCodeData data;
  final String token;
}

class OnChangeCantidadEvent extends ContarProductosEvent {
  const OnChangeCantidadEvent(this.newValue);

  final String newValue;
}
