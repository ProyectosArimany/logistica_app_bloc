part of 'contar_productos_bloc.dart';

class ContarProductosState {
  const ContarProductosState({
    required this.controllerPosicionOrigen,
    required this.controllerLoteOrigen,
    required this.controllerCodigo,
    required this.controllerNombre,
    required this.almacenDestino,
    required this.controllerPosicionDestino,
    required this.controllerLoteDestino,
    required this.cantidad,
    required this.almacenes,
  });

  final TextEditingController controllerPosicionOrigen;
  final TextEditingController controllerLoteOrigen;
  final TextEditingController controllerCodigo;
  final TextEditingController controllerNombre;
  final String almacenDestino;
  final TextEditingController controllerPosicionDestino;
  final TextEditingController controllerLoteDestino;
  final TextEditingController cantidad;
  final List<Almacen> almacenes;

  ContarProductosState copyWith({
    TextEditingController? controllerPosicionOrigen,
    TextEditingController? controllerLoteOrigen,
    TextEditingController? controllerCodigo,
    TextEditingController? controllerNombre,
    String? almacenDestino,
    TextEditingController? controllerLugarDestino,
    TextEditingController? controllerPosicionDestino,
    TextEditingController? cantidad,
    List<Almacen>? almacenes,
  }) =>
      ContarProductosState(
        controllerPosicionOrigen:
            controllerPosicionOrigen ?? this.controllerPosicionOrigen,
        controllerLoteOrigen: controllerLoteOrigen ?? this.controllerLoteOrigen,
        controllerCodigo: controllerCodigo ?? this.controllerCodigo,
        controllerNombre: controllerNombre ?? this.controllerNombre,
        almacenDestino: almacenDestino ?? this.almacenDestino,
        controllerLoteDestino:
            controllerLugarDestino ?? this.controllerLoteDestino,
        controllerPosicionDestino:
            controllerPosicionDestino ?? this.controllerPosicionDestino,
        cantidad: cantidad ?? this.cantidad,
        almacenes: almacenes ?? this.almacenes,
      );
}

class ContarProductosInitialState extends ContarProductosState {
  ContarProductosInitialState()
      : super(
          almacenDestino: "",
          controllerCodigo: TextEditingController(),
          controllerLoteDestino: TextEditingController(),
          controllerLoteOrigen: TextEditingController(),
          controllerPosicionDestino: TextEditingController(),
          controllerPosicionOrigen: TextEditingController(),
          controllerNombre: TextEditingController(),
          cantidad: TextEditingController(),
          almacenes: [],
        );
}
