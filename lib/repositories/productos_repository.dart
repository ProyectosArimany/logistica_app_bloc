import 'package:logistica_app_bloc/models/info_productos.dart';
import 'package:logistica_app_bloc/models/nombre_prducto.dart';
import 'package:logistica_app_bloc/models/params/get_info_productos_query.dart';
import 'package:logistica_app_bloc/models/params/get_nombre_producto_query.dart';
import 'package:logistica_app_bloc/repositories/provider_http.dart';
import 'package:logistica_app_bloc/utils/url.dart';

class ProductosRepository {
  const ProductosRepository();

  Future<RespFetch<List<NombreProducto>>> getNombre(
          String token, GetNombreProductoQuery query) async =>
      await Fetcher.get<List<NombreProducto>>(
        URL("Productos/GetNombre", query.toJson()),
        headers: {"Authorization": token},
        maper: NombreProducto.fromJsonList,
      );

  Future<RespFetch<List<InfoProducto>>> getInfoProductos(
          String token, GetInfoProductosQuery query) async =>
      await Fetcher.get<List<InfoProducto>>(
        URL("Productos/GetInfoProductos", query.toJson()),
        headers: {"Authorization": token},
        maper: InfoProducto.fromJson,
      );
}
