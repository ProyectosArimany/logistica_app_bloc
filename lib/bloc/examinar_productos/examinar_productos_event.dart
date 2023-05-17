part of 'examinar_productos_bloc.dart';

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

class OnIncrementEvent extends ContarProductosEvent {
  const OnIncrementEvent();
}

class OnDecrementEvent extends ContarProductosEvent {
  const OnDecrementEvent();
}
