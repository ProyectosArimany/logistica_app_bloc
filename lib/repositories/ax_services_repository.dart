import 'dart:convert';

import 'package:logistica_app_bloc/models/almacen.dart';
import 'package:logistica_app_bloc/models/catalogo_articulos.dart';
import 'package:logistica_app_bloc/models/params/create_movement_ax_body.dart';
import 'package:logistica_app_bloc/models/params/delete_movement_ax_body.dart';
import 'package:logistica_app_bloc/models/params/get_product_list_query.dart';
import 'package:logistica_app_bloc/models/params/get_almacenes_query.dart';
import 'package:logistica_app_bloc/models/params/post_movement_ax_body.dart';
import 'package:logistica_app_bloc/models/tipo_movimiento.dart';
import 'package:logistica_app_bloc/repositories/provider_http.dart';
import 'package:logistica_app_bloc/utils/url.dart';

class AXServicesRepository {
  const AXServicesRepository();

  final String url = "arimanylocaliza:8080";

  Future<RespFetch<List<Almacen>>> getAlmacenes(
          String token, GetAlmacenesQuery query) async =>
      await Fetcher.get<List<Almacen>>(
        URL("/AXServices/AXService/GetLocationList", query.toJson(), url: url),
        headers: {"Authorization": token},
        maper: Almacen.fromJsonList,
      );

  Future<RespFetch> getUbicaciones(String token, String empresa) async =>
      await Fetcher.get(
        URL("/AXServices/AXService/GetWMSLocationList", {"empresa": empresa},
            url: url),
        headers: {"Authorization": token},
      );

  Future<RespFetch> getLotes(String token) async => await Fetcher.get(
        URL("/AXServices/AXService/getWMSBatchList", {}, url: url),
        headers: {"Authorizaton": token},
      );

  Future<RespFetch<List<CatalogoArticulos>>> getProductList(
          String token, GetProductListQuery query) async =>
      await Fetcher.get(
        URL("/AXServices/AXService/GetProductList", query.toJson(), url: url),
        headers: {"Authorization": token},
        maper: CatalogoArticulos.fromJsonList,
      );

  Future<RespFetch<List<TiposDeMovimiento>>> getTiposMovimientos(
          String token, String empresa, String axUser) async =>
      await Fetcher.get(
        URL("/AXServices/AXService/GetJournalTypeList",
            {'empresa': empresa, 'axuser': axUser}),
        headers: {"Authorization": token},
        maper: TiposDeMovimiento.fromJson,
      );

  Future<RespFetch<List>> createMovementAX(
          String token, CreateMovementAxBody body) async =>
      await Fetcher.post(
        URL("/AXServices/AXService/CreateJournal", {}, url: url),
        headers: {"Authorization": token},
        body: jsonEncode(body.toJson()),
      );

  Future<RespFetch<List>> postMovementAX(
          String token, PostMovementAxBody body) async =>
      await Fetcher.post(
        URL("/AXServices/AXService/postJournal", {}, url: url),
        headers: {"Authorization": token},
        body: jsonEncode(body.toJson()),
      );

  Future<RespFetch<List>> deleteMovementAX(
          String token, DeleteMovementAxBody body) async =>
      await Fetcher.post(
        URL("/AXServices/AXService/DeleteJournal", {}, url: url),
        headers: {"Authorization": token},
        body: jsonEncode(body.toJson()),
      );
}
