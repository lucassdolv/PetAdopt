import '../model/user_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class UserController {
  Future<String> registerUser(UserModel user) async {
    final url = Uri.parse('https://pet-adopt-dq32j.ondigitalocean.app/user/register');

    try {
      final userJson = jsonEncode(user.toJson());  // Envia o modelo como JSON

      print('Enviando JSON: $userJson');  // Verifique o JSON enviado

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: userJson,
      );

      print('Resposta da API: ${response.body}'); // Resposta da API para debug

      if (response.statusCode == 200) {
        return 'Usuário cadastrado com sucesso!';
      } else {
        return 'Falha ao registrar usuário: ${response.body}';
      }
    } catch (e) {
      return 'Erro ao registrar: $e';
    }
  }
}
