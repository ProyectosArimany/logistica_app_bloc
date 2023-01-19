String url = "192.168.0.230:8081";

Uri URL(String? params, Map<String, dynamic>? query) =>
    Uri.http(url, params ?? "", query);
