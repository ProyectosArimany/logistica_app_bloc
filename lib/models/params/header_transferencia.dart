class HeaderTransferencia {
  HeaderTransferencia(
      {required this.inventJournalName, required this.description});

  final String inventJournalName;
  final String description;

  factory HeaderTransferencia.fromJson(Map<String, dynamic> json) =>
      HeaderTransferencia(
        inventJournalName: json["inventJournalName"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "inventJournalName": inventJournalName,
        "description": description,
      };
}
