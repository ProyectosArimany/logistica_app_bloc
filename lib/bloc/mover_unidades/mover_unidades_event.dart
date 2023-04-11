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
  const ScanQRDoneOrigenEvent({required this.data});

  final QRBarCodeData data;
}

class ScanQRDoneDestinoEvent extends MoverUnidadesEvent {
  const ScanQRDoneDestinoEvent({required this.data});

  final QRBarCodeData data;
}
