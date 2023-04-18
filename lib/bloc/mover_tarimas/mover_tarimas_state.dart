part of 'mover_tarimas_bloc.dart';

class MoverTarimasState {
  const MoverTarimasState({
    required this.controllerPosicionOrigen,
    required this.controllerLoteOrigen,
    required this.controllerCodigo,
    required this.controllerNombre,
    required this.almacenDestino,
    required this.controllerPosicionDestino,
    required this.controllerLoteDestino,
    required this.almacenes,
  });

  final TextEditingController controllerPosicionOrigen;
  final TextEditingController controllerLoteOrigen;
  final TextEditingController controllerCodigo;
  final TextEditingController controllerNombre;
  final String almacenDestino;
  final TextEditingController controllerPosicionDestino;
  final TextEditingController controllerLoteDestino;
  final List<Almacen> almacenes;

  MoverTarimasState copyWith({
    TextEditingController? controllerPosicionOrigen,
    TextEditingController? controllerLoteOrigen,
    TextEditingController? controllerCodigo,
    TextEditingController? controllerNombre,
    String? almacenDestino,
    TextEditingController? controllerLugarDestino,
    TextEditingController? controllerPosicionDestino,
    List<Almacen>? almacenes,
  }) =>
      MoverTarimasState(
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
        almacenes: almacenes ?? this.almacenes,
      );
}

class MoverTarimasInitialState extends MoverTarimasState {
  MoverTarimasInitialState()
      : super(
          controllerPosicionOrigen: TextEditingController(),
          controllerLoteOrigen: TextEditingController(),
          controllerCodigo: TextEditingController(),
          controllerNombre: TextEditingController(),
          almacenDestino: "",
          controllerLoteDestino: TextEditingController(),
          controllerPosicionDestino: TextEditingController(),
          almacenes: [],
        );
}
