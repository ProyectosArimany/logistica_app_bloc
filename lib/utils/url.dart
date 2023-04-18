Uri URL(String? params, Map<String, dynamic>? query,
    {String? url, bool http = true}) {
  if (query != null) {
    List<String> keys = query.keys.toList();
    for (var i = 0; i < keys.length; i++) {
      if (query[keys[i]] == null) query.remove(keys[i]);
    }
  }
  return !http
      ? Uri.https(url ?? urll, params ?? "", query)
      : Uri.http(url ?? urll, params ?? "", query);
}

const String urll = "192.168.0.230:8081";
