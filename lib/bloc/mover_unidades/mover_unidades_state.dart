part of 'mover_unidades_bloc.dart';

class MoverUnidadesState {
  const MoverUnidadesState({
    required this.controllerPosicionOrigen,
    required this.controllerLoteOrigen,
    required this.controllerCodigo,
    required this.controllerNombre,
    required this.controllerCantidad,
    required this.almacenDestino,
    required this.controllerPosicionDestino,
    required this.controllerLoteDestino,
    required this.controllerAlmacenDestino,
    required this.almacenes,
  });

  final TextEditingController controllerPosicionOrigen;
  final TextEditingController controllerLoteOrigen;
  final TextEditingController controllerCodigo;
  final TextEditingController controllerNombre;
  final String almacenDestino;
  final TextEditingController controllerCantidad;
  final TextEditingController controllerAlmacenDestino;
  final TextEditingController controllerPosicionDestino;
  final TextEditingController controllerLoteDestino;
  final List<Almacen> almacenes;

  MoverUnidadesState copyWith({
    TextEditingController? controllerPosicionOrigen,
    TextEditingController? controllerLoteOrigen,
    TextEditingController? controllerCodigo,
    TextEditingController? controllerNombre,
    TextEditingController? controllerCantidad,
    String? almacenDestino,
    TextEditingController? controllerLugarDestino,
    TextEditingController? controllerPosicionDestino,
    TextEditingController? controllerAlmacenDestino,
    List<Almacen>? almacenes,
  }) =>
      MoverUnidadesState(
        controllerPosicionOrigen:
            controllerPosicionOrigen ?? this.controllerPosicionOrigen,
        controllerLoteOrigen: controllerLoteOrigen ?? this.controllerLoteOrigen,
        controllerCodigo: controllerCodigo ?? this.controllerCodigo,
        controllerNombre: controllerNombre ?? this.controllerNombre,
        controllerCantidad: controllerCantidad ?? this.controllerCantidad,
        almacenDestino: almacenDestino ?? this.almacenDestino,
        controllerLoteDestino:
            controllerLugarDestino ?? this.controllerLoteDestino,
        controllerPosicionDestino:
            controllerPosicionDestino ?? this.controllerPosicionDestino,
        controllerAlmacenDestino:
            controllerAlmacenDestino ?? this.controllerAlmacenDestino,
        almacenes: almacenes ?? this.almacenes,
      );
}

class MoverUnidadesInitialState extends MoverUnidadesState {
  MoverUnidadesInitialState()
      : super(
          controllerPosicionOrigen: TextEditingController(),
          controllerLoteOrigen: TextEditingController(),
          controllerCodigo: TextEditingController(),
          controllerNombre: TextEditingController(),
          controllerCantidad: TextEditingController(text: "0"),
          almacenDestino: "",
          controllerLoteDestino: TextEditingController(),
          controllerPosicionDestino: TextEditingController(),
          controllerAlmacenDestino: TextEditingController(),
          almacenes: [],
        );
}
