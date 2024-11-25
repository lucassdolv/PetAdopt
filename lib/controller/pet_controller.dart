import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pet_adopt/model/pet_model.dart';

class PetController {
  static const String baseUrl = 'https://pet-adopt-dq32j.ondigitalocean.app/pet';

  // Função para buscar os pets da API
  Future<List<PetModel>> fetchPets() async {
  final response = await http.get(Uri.parse('$baseUrl/pets'));

  if (response.statusCode == 200) {
    Map<String, dynamic> data = json.decode(response.body);
    List<dynamic> petsList = data['pets']; // A chave 'pets' contém a lista de pets
    return petsList.map((json) => PetModel.fromJson(json)).toList();
  } else {
    throw Exception('Falha ao carregar os pets');
  }
}

  // Função para adicionar um novo pet
  Future<bool> addPet(PetModel pet, String token) async {
    final response = await http.post(
      Uri.parse('$baseUrl/create'),
      headers: {
        'Authorization': 'Bearer $token',  // Adiciona o token para autenticação
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'name': pet.name,
        'age': pet.age,
        'weight': pet.weight,
        'color': pet.color,
        'images': pet.images,
      }),
    );

    if (response.statusCode == 201) {
      return true; // Pet cadastrado com sucesso
    } else {
      throw Exception('Falha ao cadastrar o pet');
    }
  }
}
