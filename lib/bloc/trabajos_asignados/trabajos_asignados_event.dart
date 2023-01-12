part of 'trabajos_asignados_bloc.dart';

@immutable
class TrabajosAsignadosEvent {
  const TrabajosAsignadosEvent(this.lastState);

  final TrabajosAsignadosState lastState;
}

class GetListaTareas extends TrabajosAsignadosEvent {
  const GetListaTareas(TrabajosAsignadosState lastState, {required this.token})
      : super(lastState);

  final String token;
}
