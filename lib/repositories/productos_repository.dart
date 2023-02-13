import 'package:logistica_app_bloc/models/info_productos.dart';
import 'package:logistica_app_bloc/models/params/get_info_productos_query.dart';
import 'package:logistica_app_bloc/repositories/provider_http.dart';
import 'package:logistica_app_bloc/utils/url.dart';

class ProductosRepository {
  static Future<RespFetch<dynamic>> getInfoProductos(
      String token, GetInfoProductosQuery query) async {
    return Fetcher.get(
      URL("Productos/GetInfoProductos", query.toJson()),
      headers: {"Authorization": token},
      maper: InfoProductos.fromJson,
    );
  }
}
