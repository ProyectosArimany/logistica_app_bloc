part of 'contar_productos_bloc.dart';

class ContarProductosState {
  const ContarProductosState({
    required this.controllerPosicion,
    required this.controllerLote,
    required this.controllerCodigo,
    required this.controllerNombre,
    required this.almacenDestino,
    required this.cantidad,
    required this.almacenes,
  });

  final TextEditingController controllerPosicion;
  final TextEditingController controllerLote;
  final TextEditingController controllerCodigo;
  final TextEditingController controllerNombre;
  final TextEditingController cantidad;
  final String almacenDestino;
  final List<Almacen> almacenes;

  ContarProductosState copyWith({
    TextEditingController? controllerPosicion,
    TextEditingController? controllerLote,
    TextEditingController? controllerCodigo,
    TextEditingController? controllerNombre,
    String? almacenDestino,
    TextEditingController? controllerLugarDestino,
    TextEditingController? controllerPosicionDestino,
    TextEditingController? cantidad,
    List<Almacen>? almacenes,
  }) =>
      ContarProductosState(
        controllerPosicion: controllerPosicion ?? this.controllerPosicion,
        controllerLote: controllerLote ?? this.controllerLote,
        controllerCodigo: controllerCodigo ?? this.controllerCodigo,
        controllerNombre: controllerNombre ?? this.controllerNombre,
        almacenDestino: almacenDestino ?? this.almacenDestino,
        cantidad: cantidad ?? this.cantidad,
        almacenes: almacenes ?? this.almacenes,
      );
}

class ContarProductosInitialState extends ContarProductosState {
  ContarProductosInitialState()
      : super(
          almacenDestino: "",
          controllerCodigo: TextEditingController(),
          controllerLote: TextEditingController(),
          controllerPosicion: TextEditingController(),
          controllerNombre: TextEditingController(),
          cantidad: TextEditingController(),
          almacenes: [],
        );
}
