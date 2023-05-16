import 'package:logistica_app_bloc/models/conteo.dart';
import 'package:logistica_app_bloc/models/params/get_conteos_query.dart';
import 'package:logistica_app_bloc/repositories/provider_http.dart';
import 'package:logistica_app_bloc/utils/url.dart';

class ConteosRepository {
  Future<RespFetch<List<Conteos>>> getConteos(
    String token,
    String? codigoUnico,
    DateTime? fechaDeInventario,
  ) async =>
      await Fetcher.get(
          URL(
            "Conteos",
            GetConteosQuery(
              codigoUnico: codigoUnico,
              fechaDeInventario: fechaDeInventario,
            ).toJson(),
          ),
          headers: {"Authorization": token});

  Future<RespFetch<String>> postConteos(String token, Conteos conteo) async =>
      await Fetcher.post(
        URL("Conteos", {}),
        headers: {"Authorization": token},
        body: conteo.toJson(),
      );

  Future<RespFetch<String>> deleteConteos(String token, dynamic query) async =>
      await Fetcher.delete(
        URL("Conteos", {}),
        headers: {"Authorization": token},
      );
}
