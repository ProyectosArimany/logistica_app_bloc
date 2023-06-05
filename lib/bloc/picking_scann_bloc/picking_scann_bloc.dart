import 'package:bloc/bloc.dart';
import 'package:logistica_app_bloc/models/params/listado_subtareas_query.dart';
import 'package:logistica_app_bloc/models/sub_tarea_asignada_view.dart';
import 'package:logistica_app_bloc/repositories/tareas_repository.dart';

part 'picking_scann_bloc_event.dart';
part 'picking_scann_bloc_state.dart';

class PickingScannBloc extends Bloc<PickingScannEvent, PickingScannState> {
  final TareasRepository tareasProvider;

  PickingScannBloc(this.tareasProvider) : super(PickingScannInitialState()) {
    on<GetListaSubTareasAsignadas>((event, emit) async {
      var lista =
          await tareasProvider.listadoSubTareas(event.token, event.query);
      if (lista.status != 200) {
        return emit(state.copyWith(
          listaSubTareas: [],
          errorListaSubTareas: true,
          msgErrorListaSubTareas: lista.msg,
        ));
      }
      emit(state.copyWith(
        listaSubTareas: lista.data,
        errorListaSubTareas: false,
        msgErrorListaSubTareas: '',
      ));
    });
  }
}
