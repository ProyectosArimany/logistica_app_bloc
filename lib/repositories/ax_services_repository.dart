import 'package:logistica_app_bloc/models/almacen.dart';
import 'package:logistica_app_bloc/models/catalogo_articulos.dart';
import 'package:logistica_app_bloc/models/params/get_almacenes_query.dart';
import 'package:logistica_app_bloc/repositories/provider_http.dart';

class AXServicesRepository {
  const AXServicesRepository();

  static const String url = "http://arimanylocaliza:8080";

  static Future<RespFetch<List<Almacen>>> getAlmacenes(
          String token, GetAlmacenesQuery query) async =>
      await Fetcher.get<List<Almacen>>(
        Uri.http(url, "AXService/Almacenes", query.toJson()),
        headers: {"Authorization": token},
        maper: Almacen.fromJsonList,
      );

  static Future<RespFetch> getUbicaciones(String token, String empresa) async =>
      await Fetcher.get(
        Uri.http(url, "/AXServices/GetLocationList", {"empresa": empresa}),
        headers: {"Authorization": token},
      );

  static Future<RespFetch> getPosiciones(String token) async =>
      await Fetcher.get(
        Uri.http(url, "", {}),
        headers: {"Content-Type": "application/json", "Authorizaton": token},
      );

  static Future<RespFetch<List<CatalogoArticulos>>> getProductList(
          String token) async =>
      Fetcher.get(
        Uri.http(url, "/AXServices/AXService/GetProductList", {}),
        headers: {"Authorization": token},
        maper: CatalogoArticulos.fromJsonList,
      );
}
