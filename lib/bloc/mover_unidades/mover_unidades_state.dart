part of 'mover_unidades_bloc.dart';

class MoverUnidadesState {
  const MoverUnidadesState({
    required this.controllerPosicionOrigen,
    required this.controllerLoteOrigen,
    required this.controllerCodigo,
    required this.controllerNombre,
    required this.controllerLugarDestino,
    required this.controllerPosicionDestino,
    required this.almacenes,
  });

  final TextEditingController controllerPosicionOrigen;
  final TextEditingController controllerLoteOrigen;
  final TextEditingController controllerCodigo;
  final TextEditingController controllerNombre;
  final TextEditingController controllerLugarDestino;
  final TextEditingController controllerPosicionDestino;
  final List<Almacen> almacenes;

  MoverUnidadesState copyWith({
    TextEditingController? controllerPosicionOrigen,
    TextEditingController? controllerLoteOrigen,
    TextEditingController? controllerCodigo,
    TextEditingController? controllerNombre,
    TextEditingController? controllerLugarDestino,
    TextEditingController? controllerPosicionDestino,
    List<Almacen>? almacenes,
  }) =>
      MoverUnidadesState(
        controllerPosicionOrigen:
            controllerPosicionOrigen ?? this.controllerPosicionOrigen,
        controllerLoteOrigen: controllerLoteOrigen ?? this.controllerLoteOrigen,
        controllerCodigo: controllerCodigo ?? this.controllerCodigo,
        controllerNombre: controllerNombre ?? this.controllerNombre,
        controllerLugarDestino:
            controllerLugarDestino ?? this.controllerLugarDestino,
        controllerPosicionDestino:
            controllerPosicionDestino ?? this.controllerPosicionDestino,
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
          controllerLugarDestino: TextEditingController(),
          controllerPosicionDestino: TextEditingController(),
          almacenes: [],
        );
}
