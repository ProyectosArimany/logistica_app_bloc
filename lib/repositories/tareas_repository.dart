import 'package:logistica_app_bloc/models/params/asignar_tarea_query.dart';
import 'package:logistica_app_bloc/models/params/crear_tarea_query.dart';
import 'package:logistica_app_bloc/models/params/lista_tareas_asignadas_query.dart';
import 'package:logistica_app_bloc/models/tarea_asignada.dart';
import 'package:logistica_app_bloc/repositories/provider_http.dart';
import 'package:logistica_app_bloc/models/tarea_view.dart';
import 'package:logistica_app_bloc/models/tarea.dart';
import 'package:logistica_app_bloc/utils/url.dart';

class TareasProvider {
  Future<RespFetch<List<TareaView>>> listaTareas(
          String token, ListaTareasAsignadasQuery query) async =>
      await Fetcher.get(URL("/Tareas/ListaTareas", query.toJson()),
          headers: {"Authorization": token}, maper: TareaView.fromJsonList);

  Future<RespFetch<Tarea>> crearTarea(
          String token, CrearTareaQuery query) async =>
      await Fetcher.post(URL("/Tareas/CrearTarea", query.toJson()),
          headers: {"Authorization": token}, maper: Tarea.fromJson);

  Future<RespFetch<TareaAsignada>> listaTareasAsignadas(
          String token, ListaTareasAsignadasQuery query) async =>
      await Fetcher.get(URL("/Tareas/ListaTareasAsignadas", query.toJson()),
          headers: {"Authorization": token}, maper: TareaAsignada.fromJson);

  Future<RespFetch<TareaAsignada>> asignarTarea(
          String token, AsignarTareaQuery query) async =>
      await Fetcher.post(URL("/Tareas/AsignarTarea", query.toJson()),
          headers: {"Authorization": token}, maper: TareaAsignada.fromJson);
}