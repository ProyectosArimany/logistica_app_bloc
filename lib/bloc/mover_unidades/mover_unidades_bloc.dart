import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:logistica_app_bloc/models/almacen.dart';
import 'package:logistica_app_bloc/models/params/get_almacenes_query.dart';
import 'package:logistica_app_bloc/models/qr_barcode_data.dart';
import 'package:logistica_app_bloc/repositories/ax_services_repository.dart';

part 'mover_unidades_event.dart';
part 'mover_unidades_state.dart';

class MoverUnidadesBloc extends Bloc<MoverUnidadesEvent, MoverUnidadesState> {
  final AXServicesRepository aXRepository;

  MoverUnidadesBloc({required this.aXRepository})
      : super(MoverUnidadesInitialState()) {
    on<GetAlmacenes>((event, emit) async {
      final result = await AXServicesRepository.getAlmacenes(
          event.token, GetAlmacenesQuery(empresa: event.empresa));
      if (result.status == 200 || result.status == 204) {
        emit(state.copyWith(almacenes: result.data));
      } else {
        emit(state.copyWith(almacenes: []));
        event.showError(event.context, result.msg);
      }
    });

    on<ScanQRDoneOrigenEvent>((event, emit) {
      state.controllerPosicionOrigen.value =
          TextEditingValue(text: event.data.ubicacion);
      state.controllerPosicionOrigen.value =
          TextEditingValue(text: event.data.lote);
      state.controllerPosicionOrigen.value =
          TextEditingValue(text: event.data.producto);
    });

    on<ScanQRDoneDestinoEvent>((event, emit) {
      emit(state.copyWith(
        controllerPosicionDestino:
            TextEditingController(text: event.data.ubicacion),
        controllerLugarDestino: TextEditingController(text: event.data.lote),
      ));
    });
  }
}
