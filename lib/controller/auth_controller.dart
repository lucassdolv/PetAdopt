import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/user_model.dart';

class AuthController {
  Future<String?> loginUser(String email, String password) async {
    final url = Uri.parse('https://pet-adopt-dq32j.ondigitalocean.app/user/login');

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['token']; // Retorna o token de autenticação
      } else {
        return null; // Se falhar
      }
    } catch (e) {
      print('Erro ao fazer login: $e');
      return null;
    }
  }

  Future<void> logoutUser() async {
    // Implementação para logout (remover token, por exemplo)
  }
}
