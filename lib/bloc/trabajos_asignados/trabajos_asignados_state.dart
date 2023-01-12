part of 'trabajos_asignados_bloc.dart';

class TrabajosAsignadosState {
  TrabajosAsignadosState({required this.listaTareas});

  final List<TareaView> listaTareas;

  copyWith({
    List<TareaView>? listaTareas,
  }) {
    return TrabajosAsignadosState(
      listaTareas: listaTareas ?? this.listaTareas,
    );
  }
}

class TrabajosAsignadosInitial extends TrabajosAsignadosState {
  TrabajosAsignadosInitial()
      : super(
          listaTareas: [],
        );
}
