import 'package:logistica_app_bloc/models/almacen.dart';
import 'package:logistica_app_bloc/models/existencia_producto_view.dart';
import 'package:logistica_app_bloc/models/params/get_almacenes_query.dart';
import 'package:logistica_app_bloc/repositories/provider_http.dart';
import 'package:logistica_app_bloc/utils/url.dart';

class AxRepository {
  const AxRepository();

  Future<RespFetch<List<Almacen>>> getAlmacenes(
          String token, GetAlmacenesQuery query) async =>
      await Fetcher.get(URL("AXService/Almacenes", query.toJson()),
          headers: {"Authorization": token}, maper: Almacen.fromJsonList);

  Future<RespFetch<List<ExistencaPorLoteView>>> getExistenciaProductos(
          String token, String? itemId) async =>
      await Fetcher.get(
        URL("AXService/ExistenciaProductos", {"ItemId": itemId ?? ""}),
        headers: {"Authorization": token},
        maper: ExistencaPorLoteView.fromJsonList,
      );
}
