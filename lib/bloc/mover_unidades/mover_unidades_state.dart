part of 'mover_unidades_bloc.dart';

class MoverUnidadesState {
  const MoverUnidadesState({
    required this.controllerPosicionOrigen,
    required this.controllerLoteOrigen,
    required this.controllerCodigo,
    required this.controllerNombre,
    required this.controllerCantidad,
    required this.controllerLugarDestino,
    required this.controllerPosicionDestino,
    required this.controllerAlmacenDestino,
    required this.almacenes,
  });

  final TextEditingController controllerPosicionOrigen;
  final TextEditingController controllerLoteOrigen;
  final TextEditingController controllerCodigo;
  final TextEditingController controllerNombre;
  final TextEditingController controllerCantidad;
  final TextEditingController controllerLugarDestino;
  final TextEditingController controllerPosicionDestino;
  final TextEditingController controllerAlmacenDestino;
  final List<Almacen> almacenes;

  MoverUnidadesState copyWith({
    TextEditingController? controllerPosicionOrigen,
    TextEditingController? controllerLoteOrigen,
    TextEditingController? controllerCodigo,
    TextEditingController? controllerNombre,
    TextEditingController? controllerCantidad,
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
        controllerLugarDestino:
            controllerLugarDestino ?? this.controllerLugarDestino,
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
          controllerCantidad: TextEditingController(),
          controllerLugarDestino: TextEditingController(),
          controllerPosicionDestino: TextEditingController(),
          controllerAlmacenDestino: TextEditingController(),
          almacenes: [],
        );
}
