import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:logistica_app_bloc/models/almacen.dart';
import 'package:logistica_app_bloc/models/params/get_almacenes_query.dart';
import 'package:logistica_app_bloc/models/params/get_nombre_producto_query.dart';
import 'package:logistica_app_bloc/models/qr_barcode_data.dart';
import 'package:logistica_app_bloc/repositories/ax_services_repository.dart';
import 'package:logistica_app_bloc/repositories/productos_repository.dart';
import 'package:meta/meta.dart';

part 'mover_tarimas_event.dart';
part 'mover_tarimas_state.dart';

class MoverTarimasBloc extends Bloc<MoverTarimasEvent, MoverTarimasState> {
  final AXServicesRepository axRepository;
  final ProductosRepository productosRepository;

  MoverTarimasBloc(
      {required this.axRepository, required this.productosRepository})
      : super(MoverTarimasInitialState()) {
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

      emit(state.copyWith(
          controllerPosicionOrigen:
              TextEditingController(text: event.data.ubicacion),
          controllerLoteOrigen: TextEditingController(text: event.data.lote),
          controllerCodigo: TextEditingController(text: event.data.producto),
          controllerNombre:
              TextEditingController(text: resultName.data?[0].nombre ?? "")));
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
