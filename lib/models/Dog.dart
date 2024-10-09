class Dog {
  final String name; // Nome do cachorro
  final String breed; // Raça do cachorro
  final int age; // Idade do cachorro em anos
  final double weight; // Peso do cachorro em kg
  final String gender; // Sexo do cachorro
  final String description; // Descrição do cachorro

  // Construtor
  Dog({
    required this.name,
    required this.breed,
    required this.age,
    required this.weight,
    required this.gender,
    required this.description, // Novo parâmetro para descrição
  });
}
