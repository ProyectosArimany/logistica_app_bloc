import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:logistica_app_bloc/models/almacen.dart';
import 'package:logistica_app_bloc/models/params/get_nombre_producto_query.dart';
import 'package:logistica_app_bloc/models/qr_barcode_data.dart';
import 'package:logistica_app_bloc/repositories/productos_repository.dart';
import 'package:meta/meta.dart';

part 'contar_productos_event.dart';
part 'contar_productos_state.dart';

class ContarProductosBloc
    extends Bloc<ContarProductosEvent, ContarProductosState> {
  final ProductosRepository productosRepository;

  ContarProductosBloc({required this.productosRepository})
      : super(ContarProductosInitialState()) {
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
