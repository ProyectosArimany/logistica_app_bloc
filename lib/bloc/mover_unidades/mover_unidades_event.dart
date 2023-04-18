part of 'mover_unidades_bloc.dart';

class MoverUnidadesEvent {
  const MoverUnidadesEvent();
}

class GetAlmacenes extends MoverUnidadesEvent {
  const GetAlmacenes({
    required this.token,
    required this.empresa,
    required this.pageNo,
    required this.pageSize,
    required this.context,
    required this.showError,
  }) : super();

  final String token;
  final String empresa;
  final int pageNo;
  final int pageSize;
  final BuildContext context;
  final void Function(BuildContext _, String __) showError;
}

class ScanQRDoneOrigenEvent extends MoverUnidadesEvent {
  const ScanQRDoneOrigenEvent({required this.data, required this.token});

  final QRBarCodeData data;
  final String token;
}

class ScanQRDoneDestinoEvent extends MoverUnidadesEvent {
  const ScanQRDoneDestinoEvent({required this.data});

  final QRBarCodeData data;
}

class ChangeAlmacenDestinoEvent extends MoverUnidadesEvent {
  const ChangeAlmacenDestinoEvent({required this.almacen});

  final String almacen;
}

class OnChangeCantidadEvent extends MoverUnidadesEvent {
  const OnChangeCantidadEvent(this.newValue);

  final String newValue;
}

class OnIncrementEvent extends MoverUnidadesEvent {
  const OnIncrementEvent();
}

class OnDecrementEvent extends MoverUnidadesEvent {
  const OnDecrementEvent();
}
