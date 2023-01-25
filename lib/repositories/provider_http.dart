import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RespFetch<T> {
  final int status;
  final T? data;
  final String msg;
  const RespFetch({this.status = 1000, this.data, required this.msg});
}

class Fetcher {
  static final Map<String, String> _headders = {
    "Content-Type": "application/json",
  };

  static Future<RespFetch<T>> get<T>(Uri url,
      {Map<String, String>? headers, dynamic maper}) async {
    final http.Response peticionGet =
        await http.get(url, headers: _getHeaders(headers));

    return _compStatus(peticionGet, maper) as RespFetch<T>;
  }

  static Future<RespFetch<T>> post<T>(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    dynamic maper,
    Encoding? encoding,
  }) async {
    final http.Response peticionPost = await http.post(
      url,
      headers: _getHeaders(headers),
      body: body,
      encoding: encoding,
    );

    return _compStatus(peticionPost, maper) as RespFetch<T>;
  }

  static Future<RespFetch<T>> put<T>(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    dynamic maper,
    Encoding? encoding,
  }) async {
    final http.Response peticionPut = await http.put(
      url,
      headers: _getHeaders(headers),
      body: body,
      encoding: encoding,
    );

    return _compStatus(peticionPut, maper) as RespFetch<T>;
  }

  static Future<RespFetch<T>> patch<T>(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    dynamic maper,
    Encoding? encoding,
  }) async {
    final http.Response peticionPatch = await http.patch(
      url,
      headers: _getHeaders(headers),
      body: body,
      encoding: encoding,
    );

    return _compStatus(peticionPatch, maper) as RespFetch<T>;
  }

  static Future<RespFetch<T>> delete<T>(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    dynamic maper,
    Encoding? encoding,
  }) async {
    final http.Response peticionDelete = await http.delete(
      url,
      headers: _getHeaders(headers),
      body: body,
      encoding: encoding,
    );

    return _compStatus(peticionDelete, maper) as RespFetch<T>;
  }

  static Future<RespFetch<T>> postMultipart<T>(
    Uri url, {
    Map<String, String>? headers,
    Map<String, String>? body,
    required List<String> filesPaths,
    dynamic maper,
    Encoding? encoding,
  }) async {
    http.MultipartRequest request = http.MultipartRequest('POST', url);
    if (headers != null) request.headers.addAll(headers);
    if (body != null) request.fields.addAll(body);
    for (var i = 0; i < filesPaths.length; i++) {
      request.files.add(
        http.MultipartFile(
          'archivo$i',
          File(filesPaths[i]).readAsBytes().asStream(),
          File(filesPaths[i]).lengthSync(),
          filename: filesPaths[i].split("/").last,
        ),
      );
    }

    http.StreamedResponse resp = await request.send();
    http.Response peticionPost =
        http.Response(resp.stream.toString(), resp.statusCode);

    return _compStatus(peticionPost, maper) as RespFetch<T>;
  }

  static Future<RespFetch<T>> putMultipart<T>(
    Uri url, {
    Map<String, String>? headers,
    Map<String, String>? body,
    required List<String> filesPaths,
    dynamic maper,
    Encoding? encoding,
  }) async {
    http.MultipartRequest request = http.MultipartRequest('PUT', url);
    if (headers != null) request.headers.addAll(headers);
    if (body != null) request.fields.addAll(body);
    for (var i = 0; i < filesPaths.length; i++) {
      request.files.add(
        http.MultipartFile(
          'archivo$i',
          File(filesPaths[i]).readAsBytes().asStream(),
          File(filesPaths[i]).lengthSync(),
          filename: filesPaths[i].split("/").last,
        ),
      );
    }

    http.StreamedResponse resp = await request.send();
    http.Response peticionPost =
        http.Response(resp.stream.toString(), resp.statusCode);

    return _compStatus(peticionPost, maper) as RespFetch<T>;
  }

  static Future<RespFetch<T>> patchMultipart<T>(
    Uri url, {
    Map<String, String>? headers,
    Map<String, String>? body,
    required List<String> filesPaths,
    dynamic maper,
    Encoding? encoding,
  }) async {
    http.MultipartRequest request = http.MultipartRequest('PATCH', url);
    if (headers != null) request.headers.addAll(headers);
    if (body != null) request.fields.addAll(body);
    for (var i = 0; i < filesPaths.length; i++) {
      request.files.add(
        http.MultipartFile(
          'archivo$i',
          File(filesPaths[i]).readAsBytes().asStream(),
          File(filesPaths[i]).lengthSync(),
          filename: filesPaths[i].split("/").last,
        ),
      );
    }

    http.StreamedResponse resp = await request.send();
    http.Response peticionPost =
        http.Response(resp.stream.toString(), resp.statusCode);

    return _compStatus<T>(peticionPost, maper);
  }

  static Map<String, String> _getHeaders(Map<String, String?>? user) {
    if (user == null || user.isEmpty) return _headders;

    // * Eliminando las propiedades nulas
    List<String> keys = user.keys.toList();
    for (var i = 0; i < keys.length; i++) {
      if (user[keys[i]] == null) user.remove(keys[i]);
    }

    // * listas de keys de los Map
    final List<String> localHeaderkeys = _headders.keys.toList();
    final List<String> userHeaderKeys = user.keys.toList();

    // * Lista de headders de usuario en minusculas
    final List<String> userHeaddersLower =
        userHeaderKeys.map((h) => h.toLowerCase()).toList();
    // * añadiendo los headders de user a la nueva variable
    Map<String, String> headders = {};
    for (String userHeader in userHeaderKeys) {
      headders[userHeader] = user[userHeader]!;
    }
    // * Agregando las propiedades faltantes
    for (String localHeader in localHeaderkeys) {
      if (!userHeaddersLower.contains(localHeader.toLowerCase())) {
        headders[localHeader] = _headders[localHeader]!;
      }
    }

    return headders;
  }

  static RespFetch<T> _compStatus<T>(http.Response peticion, dynamic Maper) {
    RespFetch<T> respuesta;

    try {
      final dynamic data = jsonDecode(peticion.body);

      try {
        Maper == null
            ? respuesta =
                RespFetch(status: peticion.statusCode, data: data, msg: "")
            : respuesta = RespFetch(
                status: peticion.statusCode,
                data: Maper(data as Map<String, dynamic>),
                msg: "",
              );
      } catch (err) {
        const String msg =
            "Los datos recibidos no pueden ser convertidos a objetos de tipo 'Maper'";
        respuesta = const RespFetch(status: 1000, data: null, msg: msg);
      }
    } catch (e) {
      respuesta = RespFetch<T>(
          status: peticion.statusCode, data: null, msg: e.toString());
    }
    return respuesta;
  }
}
