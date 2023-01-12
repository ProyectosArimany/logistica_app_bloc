import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:logistica_app_bloc/models/tarea_view.dart';
import 'package:logistica_app_bloc/providers/tareas_provider.dart';

part 'trabajos_asignados_event.dart';
part 'trabajos_asignados_state.dart';

class TrabajosAsignadosBloc
    extends Bloc<TrabajosAsignadosEvent, TrabajosAsignadosState> {
  final TareasProvider tareasProvider;

  TrabajosAsignadosBloc(this.tareasProvider)
      : super(TrabajosAsignadosInitial()) {
    on<GetListaTareas>((event, emit) async {
      var lista = await tareasProvider.listaTareas(event.token);
      if (lista.status != 200) {
        emit(event.lastState.copyWith(listaTareas: []));
        return;
      }

      emit(event.lastState.copyWith(listaTareas: lista.data));
    });
  }
}
