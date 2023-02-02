part of 'trabajos_asignados_bloc.dart';

@immutable
class TrabajosAsignadosEvent {
  const TrabajosAsignadosEvent();
}

class GetListaTareas extends TrabajosAsignadosEvent {
  const GetListaTareas({required this.token, required this.query});

  final String token;
  final ListaTareasAsignadasQuery query;
}

class GetListaRutasAsignadas extends TrabajosAsignadosEvent {
  const GetListaRutasAsignadas({required this.token, required this.query});

  final String token;
  final ListaRutasQuery query;
}

class GetListaSubTareasAsignadas extends TrabajosAsignadosEvent {
  const GetListaSubTareasAsignadas({required this.token, required this.query});

  final String token;
  final ListadoSubTareasQuery query;
}
