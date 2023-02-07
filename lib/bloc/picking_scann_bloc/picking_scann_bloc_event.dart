part of 'picking_scann_bloc.dart';

class PickingScannEvent {
  const PickingScannEvent();
}

class GetListaSubTareasAsignadas extends PickingScannEvent {
  const GetListaSubTareasAsignadas({required this.token, required this.query});

  final String token;
  final ListadoSubTareasQuery query;
}
