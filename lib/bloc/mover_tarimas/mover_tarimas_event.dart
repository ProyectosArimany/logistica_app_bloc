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
  }) : super();

  final String token;
  final String empresa;
  final int pageNo;
  final int pageSize;
}

class ScanQRDoneOrigen extends MoverTarimasEvent {
  const ScanQRDoneOrigen({required this.data});

  final QRBarCodeData data;
}
