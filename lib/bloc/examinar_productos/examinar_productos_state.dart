part of 'examinar_productos_bloc.dart';

class ExaminarProductosState {
  const ExaminarProductosState({
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

  ExaminarProductosState copyWith({
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
      ExaminarProductosState(
        controllerPosicion: controllerPosicion ?? this.controllerPosicion,
        controllerLote: controllerLote ?? this.controllerLote,
        controllerCodigo: controllerCodigo ?? this.controllerCodigo,
        controllerNombre: controllerNombre ?? this.controllerNombre,
        almacenDestino: almacenDestino ?? this.almacenDestino,
        cantidad: cantidad ?? this.cantidad,
        almacenes: almacenes ?? this.almacenes,
      );
}

class ExaminarProductosInitialState extends ExaminarProductosState {
  ExaminarProductosInitialState()
      : super(
          almacenDestino: "",
          controllerCodigo: TextEditingController(),
          controllerLote: TextEditingController(),
          controllerPosicion: TextEditingController(),
          controllerNombre: TextEditingController(),
          cantidad: TextEditingController(text: "0"),
          almacenes: [],
        );
}
