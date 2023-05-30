import 'dart:convert';

import 'package:logistica_app_bloc/models/estado_operacion_ax.dart';
import 'package:logistica_app_bloc/models/params/create_movement_ax_body.dart';
import 'package:logistica_app_bloc/models/params/delete_movement_ax_body.dart';
import 'package:logistica_app_bloc/models/params/post_movement_ax_body.dart';
import 'package:logistica_app_bloc/repositories/provider_http.dart';
import 'package:logistica_app_bloc/utils/url.dart';

class AxWCFRepository {
  const AxWCFRepository();

  Future<RespFetch<List>> createMovementAX(
          String token, CreateMovementAxBody body) async =>
      await Fetcher.post(
        URL("AXWCF/PostJournal", {}),
        headers: {"Authorization": token},
        body: jsonEncode(body.toJson()),
        maper: EstadoOperacionAX.fromJson,
      );

  Future<RespFetch<List>> postMovementAX(
          String token, PostMovementAxBody body) async =>
      await Fetcher.post(
        URL("AXWCF/CreateJournal", {}),
        headers: {"Authorization": token},
        body: jsonEncode(body.toJson()),
        maper: EstadoOperacionAX.fromJson,
      );

  Future<RespFetch<List>> deleteMovementAX(
          String token, DeleteMovementAxBody body) async =>
      await Fetcher.delete(
        URL("AXWCF/DeleteJournal", {}),
        headers: {"Authorization": token},
        body: jsonEncode(body.toJson()),
        maper: EstadoOperacionAX.fromJson,
      );
}
