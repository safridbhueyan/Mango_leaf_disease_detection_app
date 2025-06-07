class SymtomsModel {
  final String rawLabel;

  final String title;
  final String subtitle;
  final String discription;
  final List<String> symtom;
  final String cure;
  final List<String> resistance;

  SymtomsModel({
    required this.rawLabel,
    required this.title,
    required this.subtitle,
    required this.discription,
    required this.symtom,
    required this.cure,
    required this.resistance,
  });

  factory SymtomsModel.fromJson(Map<String, dynamic> json) {
    return SymtomsModel(
      rawLabel: json['rawLabel'],
      title: json['title'],
      subtitle: json['subtitle'],
      discription: json['discription'],
      symtom: List<String>.from(json['symtom']),
      cure: json['cure'],
      resistance: List<String>.from(json['resistance']),
    );
  }
}
