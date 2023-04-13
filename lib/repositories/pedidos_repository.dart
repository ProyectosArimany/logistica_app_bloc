import 'package:logistica_app_bloc/utils/url.dart';
import 'package:logistica_app_bloc/models/pedido_en_ruta.dart';
import 'package:logistica_app_bloc/models/ruta_despacho_view.dart';
import 'package:logistica_app_bloc/repositories/provider_http.dart';
import 'package:logistica_app_bloc/models/params/lista_rutas_query.dart';
import 'package:logistica_app_bloc/models/params/listado_pedidos_en_ruta_query.dart';

class PedidosRepository {
  Future<RespFetch<List<RutaDespachoView>>> listaRutas(
          String token, ListaRutasQuery query) async =>
      await Fetcher.get(URL("Pedidos/ListaRutas", query.toJson()));

  Future<RespFetch<List<PedidoEnRuta>>> listadoPedidosRuta(
          String token, ListadoPedidosEnRutaQuery query) async =>
      await Fetcher.get(URL("Pedidos/ListadoPedidosEnRuta", query.toJson()));
}
