import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:logistica_app_bloc/models/params/lista_rutas_query.dart';
import 'package:logistica_app_bloc/models/params/lista_tareas_asignadas_query.dart';
import 'package:logistica_app_bloc/models/params/listado_subtareas_query.dart';
import 'package:logistica_app_bloc/models/ruta_despacho_view.dart';
import 'package:logistica_app_bloc/models/sub_tarea_asignada_view.dart';
import 'package:logistica_app_bloc/models/tarea_view.dart';
import 'package:logistica_app_bloc/repositories/pedidos_repository.dart';
import 'package:logistica_app_bloc/repositories/tareas_repository.dart';

part 'trabajos_asignados_event.dart';
part 'trabajos_asignados_state.dart';

class TrabajosAsignadosBloc
    extends Bloc<TrabajosAsignadosEvent, TrabajosAsignadosState> {
  final TareasProvider tareasProvider;

  TrabajosAsignadosBloc(this.tareasProvider)
      : super(TrabajosAsignadosInitial()) {
    on<GetListaTareas>((event, emit) async {
      var lista = await tareasProvider.listaTareas(event.token, event.query);
      if (lista.status != 200) return emit(state.copyWith(listaTareas: []));
      emit(state.copyWith(listaTareas: lista.data));
    });

    on<GetListaRutasAsignadas>((event, emit) async {
      var lista = await PedidosRepository.listaRutas(event.token, event.query);
      if (lista.status != 200) return emit(state.copyWith(listaRutas: []));
      emit(state.copyWith(listaRutas: lista.data));
    });

    on<GetListaSubTareasAsignadas>(((event, emit) async {
      var lista =
          await tareasProvider.listadoSubTareas(event.token, event.query);
      if (lista.status != 200) return emit(state.copyWith(listaSubTareas: []));
      emit(state.copyWith(listaSubTareas: lista.data));
    }));
  }
}
