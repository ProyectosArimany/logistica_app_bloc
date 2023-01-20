String url = "192.168.0.230:8081";

Uri URL(String? params, Map<String, dynamic>? query) {
  if (query != null) {
    List<String> keys = query.keys.toList();
    for (var i = 0; i < keys.length; i++) {
      if (query[keys[i]] == null) query.remove(keys[i]);
    }
  }
  return Uri.http(url, params ?? "", query);
}
