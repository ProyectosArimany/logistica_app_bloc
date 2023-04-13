import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:logistica_app_bloc/models/almacen.dart';
import 'package:logistica_app_bloc/models/params/get_almacenes_query.dart';
import 'package:logistica_app_bloc/models/params/get_nombre_producto_query.dart';
import 'package:logistica_app_bloc/models/qr_barcode_data.dart';
import 'package:logistica_app_bloc/repositories/ax_services_repository.dart';
import 'package:logistica_app_bloc/repositories/productos_repository.dart';

part 'mover_unidades_event.dart';
part 'mover_unidades_state.dart';

class MoverUnidadesBloc extends Bloc<MoverUnidadesEvent, MoverUnidadesState> {
  final AXServicesRepository axRepository;
  final ProductosRepository productosRepository;

  MoverUnidadesBloc(
      {required this.axRepository, required this.productosRepository})
      : super(MoverUnidadesInitialState()) {
    on<GetAlmacenes>((event, emit) async {
      final result = await axRepository.getAlmacenes(
          event.token, GetAlmacenesQuery(empresa: event.empresa));
      if (result.status == 200 || result.status == 204) {
        emit(state.copyWith(almacenes: result.data));
      } else {
        emit(state.copyWith(almacenes: []));
        event.showError(event.context, result.msg);
      }
    });

    on<ScanQRDoneOrigenEvent>((event, emit) async {
      final resultName = await productosRepository.getNombre(event.token,
          GetNombreProductoQuery(codigoUnico: event.data.producto));

      state.controllerPosicionOrigen.value =
          TextEditingValue(text: event.data.ubicacion);
      state.controllerPosicionOrigen.value =
          TextEditingValue(text: event.data.lote);
      state.controllerPosicionOrigen.value =
          TextEditingValue(text: event.data.producto);
      state.controllerNombre.value =
          TextEditingValue(text: resultName.data?[0].nombre ?? "");
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
