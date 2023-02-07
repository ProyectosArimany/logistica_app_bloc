part of 'trabajos_asignados_bloc.dart';

class TrabajosAsignadosState {
  TrabajosAsignadosState({
    required this.listaTareas,
    required this.listaRutas,
  });

  final List<TareaView> listaTareas;
  final List<RutaDespachoView> listaRutas;

  copyWith({
    List<TareaView>? listaTareas,
    List<RutaDespachoView>? listaRutas,
    List<SubTareaAsignadaView>? listaSubTareas,
  }) =>
      TrabajosAsignadosState(
        listaTareas: listaTareas ?? this.listaTareas,
        listaRutas: listaRutas ?? this.listaRutas,
      );
}

class TrabajosAsignadosInitial extends TrabajosAsignadosState {
  TrabajosAsignadosInitial() : super(listaTareas: [], listaRutas: []);
}
