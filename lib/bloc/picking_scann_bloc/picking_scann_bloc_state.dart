part of 'picking_scann_bloc.dart';

class PickingScannState {
  const PickingScannState(
      {required this.listaSubTareas,
      required this.errorListaSubTareas,
      required this.msgErrorListaSubTareas});

  final List<SubTareaAsignadaView> listaSubTareas;
  final bool errorListaSubTareas;
  final String msgErrorListaSubTareas;

  PickingScannState copyWith({
    List<SubTareaAsignadaView>? listaSubTareas,
    bool? errorListaSubTareas,
    String? msgErrorListaSubTareas,
  }) =>
      PickingScannState(
        listaSubTareas: listaSubTareas ?? this.listaSubTareas,
        errorListaSubTareas: errorListaSubTareas ?? this.errorListaSubTareas,
        msgErrorListaSubTareas:
            msgErrorListaSubTareas ?? this.msgErrorListaSubTareas,
      );
}

class PickingScannInitialState extends PickingScannState {
  PickingScannInitialState()
      : super(
          listaSubTareas: [],
          errorListaSubTareas: false,
          msgErrorListaSubTareas: '',
        );
}
