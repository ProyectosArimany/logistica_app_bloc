Uri URL(String? params, Map<String, dynamic>? query,
    {String? url, bool http = true}) {
  if (query != null) {
    List<String> keys = query.keys.toList();
    for (var i = 0; i < keys.length; i++) {
      if (query[keys[i]] == null) query.remove(keys[i]);
    }
    for (var j = 0; j < query.keys.length; j++) {
      if (query[keys[j]] is! String) {
        query[keys[j]] = query[keys[j]].toString();
      }
    }
  }
  return !http
      ? Uri.https(url ?? urll, params ?? "", query)
      : Uri.http(url ?? urll, params ?? "", query);
}

const String urll = "http://juliorojas.triton.com.gt:8081";
