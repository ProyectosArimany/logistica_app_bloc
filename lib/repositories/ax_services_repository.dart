import 'package:logistica_app_bloc/models/almacen.dart';
import 'package:logistica_app_bloc/models/catalogo_articulos.dart';
import 'package:logistica_app_bloc/models/params/get_almacenes_query.dart';
import 'package:logistica_app_bloc/repositories/provider_http.dart';

class AXServicesRepository {
  const AXServicesRepository();

  final String url = "arimanylocaliza:8080";

  Future<RespFetch<List<Almacen>>> getAlmacenes(
          String token, GetAlmacenesQuery query) async =>
      await Fetcher.get<List<Almacen>>(
        Uri.http(url, "/AXServices/AXService/Almacenes", query.toJson()),
        headers: {"Authorization": token},
        maper: Almacen.fromJsonList,
      );

  Future<RespFetch> getUbicaciones(String token, String empresa) async =>
      await Fetcher.get(
        Uri.http(
            url, "/AXServices/AXService/GetLocationList", {"empresa": empresa}),
        headers: {"Authorization": token},
      );

  Future<RespFetch> getPosiciones(String token) async => await Fetcher.get(
        Uri.http(url, "", {}),
        headers: {"Authorizaton": token},
      );

  Future<RespFetch<List<CatalogoArticulos>>> getProductList(
          String token) async =>
      Fetcher.get(
        Uri.http(url, "/AXServices/AXService/AXService/GetProductList", {}),
        headers: {"Authorization": token},
        maper: CatalogoArticulos.fromJsonList,
      );
}
