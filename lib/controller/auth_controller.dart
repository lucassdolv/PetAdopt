import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

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
        String token = data['token'];
        
        // Salvar o token localmente
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('auth_token', token);

        return token; // Retorna o token de autenticação
      } else {
        return null; // Login falhou
      }
    } catch (e) {
      print('Erro ao fazer login: $e');
      return null;
    }
  }

  Future<void> logoutUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_token'); // Remove o token ao fazer logout
  }
}
