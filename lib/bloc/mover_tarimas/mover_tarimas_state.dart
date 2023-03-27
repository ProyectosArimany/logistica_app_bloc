part of 'mover_tarimas_bloc.dart';

class MoverTarimasState {
  const MoverTarimasState({
    required this.controllerPosicionOrigen,
    required this.controllerLoteOrigen,
    required this.controllerCodigo,
    required this.controllerNombre,
    required this.controllerLugarDestino,
    required this.controllerPosicionDestino,
  });

  final TextEditingController controllerPosicionOrigen;
  final TextEditingController controllerLoteOrigen;
  final TextEditingController controllerCodigo;
  final TextEditingController controllerNombre;
  final TextEditingController controllerLugarDestino;
  final TextEditingController controllerPosicionDestino;
}

class MoverTarimasInitialState extends MoverTarimasState {
  MoverTarimasInitialState()
      : super(
          controllerPosicionOrigen: TextEditingController(),
          controllerLoteOrigen: TextEditingController(),
          controllerCodigo: TextEditingController(),
          controllerNombre: TextEditingController(),
          controllerLugarDestino: TextEditingController(),
          controllerPosicionDestino: TextEditingController(),
        );
}
