class GetProductListQuery {
  GetProductListQuery({
    this.searchCriteria,
    this.byDescrip,
    this.searchBarCode,
    this.tipo,
    this.pageNo,
    this.pageSize,
  });

  final String? searchCriteria;
  final bool? byDescrip;
  final bool? searchBarCode;
  final int? tipo;
  final int? pageNo;
  final int? pageSize;

  factory GetProductListQuery.fromJson(Map<String, dynamic> json) =>
      GetProductListQuery(
        searchCriteria: json["searchCriteria"],
        byDescrip: json["byDescrip"],
        searchBarCode: json["searchBarCode"],
        tipo: json["tipo"],
        pageNo: json["pageNo"],
        pageSize: json["pageSize"],
      );

  Map<String, dynamic> toJson() => {
        "searchCriteria": searchCriteria,
        "byDescrip": byDescrip,
        "searchBarCode": searchBarCode,
        "tipo": tipo,
        "pageNo": pageNo,
        "pageSize": pageSize,
      };
}
