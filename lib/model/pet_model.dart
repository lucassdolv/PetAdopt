class PetModel {
  final String name;
  final int age;
  final double weight;
  final String color;
  final List<String> images;

  PetModel({
    required this.name,
    required this.age,
    required this.weight,
    required this.color,
    required this.images,
  });

  // Método para converter o JSON da resposta da API para o modelo Pet
  factory PetModel.fromJson(Map<String, dynamic> json) {
  return PetModel(
    name: json['name'],
    age: json['age'],
    weight: json['weight'].toDouble(),
    color: json['color'],
    images: List<String>.from(json['images'] ?? []),  // Garantir que seja uma lista de strings
  );
}
}
