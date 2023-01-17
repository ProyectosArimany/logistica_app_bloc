part of 'trabajos_asignados_bloc.dart';

@immutable
class TrabajosAsignadosEvent {
  const TrabajosAsignadosEvent(this.lastState);

  final TrabajosAsignadosState lastState;
}

class GetListaTareas extends TrabajosAsignadosEvent {
  const GetListaTareas(TrabajosAsignadosState lastState,
      {required this.token, required this.query})
      : super(lastState);

  final String token;
  final ListaTareasAsignadasQuery query;
}
