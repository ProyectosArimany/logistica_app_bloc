part of 'picking_scann_bloc.dart';

class PickingScannState {
  const PickingScannState({required this.listaSubTareas});

  final List<SubTareaAsignadaView> listaSubTareas;

  PickingScannState copyWith({List<SubTareaAsignadaView>? listaSubTareas}) =>
      PickingScannState(listaSubTareas: listaSubTareas ?? this.listaSubTareas);
}

class PickingScannInitialState extends PickingScannState {
  PickingScannInitialState() : super(listaSubTareas: []);
}
