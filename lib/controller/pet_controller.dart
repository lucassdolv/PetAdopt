import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../model/pet_model.dart';

class PetController {
  static const String baseUrl = 'https://pet-adopt-dq32j.ondigitalocean.app/pet';

  Future<String?> _getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('auth_token'); // Recupera o token salvo
  }

  Future<List<PetModel>> fetchPets() async {
    final response = await http.get(Uri.parse('$baseUrl/pets'));

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      List<dynamic> petsList = data['pets'];
      return petsList.map((json) => PetModel.fromJson(json)).toList();
    } else {
      throw Exception('Falha ao carregar os pets');
    }
  }

  Future<void> addPet({
    required String name,
    required int age,
    required double weight,
    required String color,
    required List<String> images,
  }) async {
    final token = await _getToken();
    if (token == null) throw Exception('Token não encontrado. Faça login novamente.');

    final response = await http.post(
      Uri.parse('$baseUrl/create'),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'name': name,
        'age': age,
        'weight': weight,
        'color': color,
        'images': images,
      }),
    );

    if (response.statusCode != 201) {
      throw Exception('Falha ao cadastrar o pet: ${response.body}');
    }
  }
}
