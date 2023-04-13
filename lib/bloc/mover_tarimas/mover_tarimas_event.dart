part of 'mover_tarimas_bloc.dart';

class MoverTarimasEvent {
  const MoverTarimasEvent();
}

class GetAlmacenes extends MoverTarimasEvent {
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

class ScanQRDoneOrigenEvent extends MoverTarimasEvent {
  const ScanQRDoneOrigenEvent({required this.data, required this.token});

  final QRBarCodeData data;
  final String token;
}

class ScanQRDoneDestinoEvent extends MoverTarimasEvent {
  const ScanQRDoneDestinoEvent({required this.data});

  final QRBarCodeData data;
}
