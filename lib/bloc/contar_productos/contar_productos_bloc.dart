import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:logistica_app_bloc/models/almacen.dart';
import 'package:logistica_app_bloc/models/params/get_nombre_producto_query.dart';
import 'package:logistica_app_bloc/models/qr_barcode_data.dart';
import 'package:logistica_app_bloc/repositories/conteos_repository.dart';
import 'package:logistica_app_bloc/repositories/productos_repository.dart';

part 'contar_productos_event.dart';
part 'contar_productos_state.dart';

class ContarProductosBloc
    extends Bloc<ContarProductosEvent, ContarProductosState> {
  final ProductosRepository productosRepository;
  final ConteosRepository conteosRespository;

  ContarProductosBloc(
      {required this.productosRepository, required this.conteosRespository})
      : super(ContarProductosInitialState()) {
    on<ScanQRDoneEvent>((event, emit) async {
      final resultName = await productosRepository.getNombre(event.token,
          GetNombreProductoQuery(codigoUnico: event.data.producto));

      emit(state.copyWith(
          controllerPosicion: TextEditingController(text: event.data.ubicacion),
          controllerLote: TextEditingController(text: event.data.lote),
          controllerCodigo: TextEditingController(text: event.data.producto),
          controllerNombre:
              TextEditingController(text: resultName.data?[0].nombre ?? "")));
    });

    on<OnChangeCantidadEvent>((event, emit) {
      try {
        final val = int.parse(event.newValue);
        emit(state.copyWith(
          cantidad: TextEditingController(text: event.newValue.toString()),
        ));
      } catch (e) {}
    });

    on<OnIncrementEvent>((event, emit) {
      try {
        final int value = int.parse(state.cantidad.value.text) + 1;
        emit(state.copyWith(
          cantidad: TextEditingController(text: value.toString()),
        ));
      } catch (e) {}
    });

    on<OnDecrementEvent>((event, emit) {
      try {
        final int value = int.parse(state.cantidad.value.text) - 1;
        emit(state.copyWith(
          cantidad: TextEditingController(text: value.toString()),
        ));
      } catch (e) {}
    });
  }
}
