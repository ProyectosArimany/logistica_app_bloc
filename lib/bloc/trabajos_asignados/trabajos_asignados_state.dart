part of 'trabajos_asignados_bloc.dart';

class TrabajosAsignadosState {
  TrabajosAsignadosState(
      {required this.listaTareas,
      required this.listaRutas,
      required this.listaSubTareas});

  final List<TareaView> listaTareas;
  final List<RutaDespachoView> listaRutas;
  final List<SubTareaAsignadaView> listaSubTareas;

  copyWith({
    List<TareaView>? listaTareas,
    List<RutaDespachoView>? listaRutas,
    List<SubTareaAsignadaView>? listaSubTareas,
  }) =>
      TrabajosAsignadosState(
        listaTareas: listaTareas ?? this.listaTareas,
        listaRutas: listaRutas ?? this.listaRutas,
        listaSubTareas: listaSubTareas ?? this.listaSubTareas,
      );
}

class TrabajosAsignadosInitial extends TrabajosAsignadosState {
  TrabajosAsignadosInitial()
      : super(listaTareas: [], listaRutas: [], listaSubTareas: []);
}
