import 'package:logistica_app_bloc/models/params/listado_ubicaciones_query.dart';
import 'package:logistica_app_bloc/models/ubicacion_con_existencia.dart';
import 'package:logistica_app_bloc/repositories/provider_http.dart';
import 'package:logistica_app_bloc/utils/url.dart';

class InventariosRepository {
  Future<RespFetch<List<UbicacionConExistencia>>> listadoDeUbicaciones(
          String token, ListadoDeUbicacionesQuery query) async =>
      await Fetcher.get(
        URL("/ListadoDeUbicaciones", query.toJson()),
        headers: {"Authorization": token},
        maper: UbicacionConExistencia.fromJsonList,
      );
}
