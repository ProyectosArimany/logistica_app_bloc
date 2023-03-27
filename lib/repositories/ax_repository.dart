import 'package:logistica_app_bloc/models/almacen.dart';
import 'package:logistica_app_bloc/models/params/get_almacenes_query.dart';
import 'package:logistica_app_bloc/repositories/provider_http.dart';
import 'package:logistica_app_bloc/utils/url.dart';

class AXRepository {
  const AXRepository();

  static Future<RespFetch<List<Almacen>>> getAlmacenes(
          String token, GetAlmacenesQuery query) async =>
      await Fetcher.get<List<Almacen>>(
        URL("AXService/Almacenes", query.toJson()),
        headers: {"Authorization": token},
        maper: Almacen.fromJsonList,
      );

  static Future<RespFetch> getUbicaciones(String token, String empresa) async =>
      await Fetcher.get(
        URL("/AXServices/GetLocationList", {"empresa": empresa}),
        headers: {"Authorization": token},
      );

  static Future<RespFetch> getPosiciones(String token) async =>
      await Fetcher.get(
        URL("", {}),
        headers: {"Content-Type": "application/json", "Authorizaton": token},
      );

  static Future<RespFetch<List<Almacen>>> getItemCodes(
          String token, GetAlmacenesQuery query) =>
      Fetcher.get(
        URL("", query.toJson()),
        headers: {"Content-Type": "application/json", "Authorization": token},
        maper: Almacen.fromJson,
      );
}
