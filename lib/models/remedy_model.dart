class Remedy {
  final String id;
  final String name;
  final String description;
  final String usage;
  final String precautions;
  final String imageUrl;

  Remedy({
    required this.id,
    required this.name,
    required this.description,
    required this.usage,
    required this.precautions,
    required this.imageUrl,
  });

  factory Remedy.fromJson(Map<String, dynamic> json) {
    return Remedy(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      usage: json['usage'],
      precautions: json['precautions'],
      imageUrl: json['imageUrl'],
    );
  }
}
