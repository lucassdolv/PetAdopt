import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Perfil de Usuário"),
          centerTitle: true,
          automaticallyImplyLeading: false, // Remove o botão de voltar padrão
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Botão Voltar estilizado
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Voltar à tela anterior
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.chevron_left, color: Colors.black),
                    SizedBox(width: 5),
                    Text(
                      "Voltar",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, // Fundo transparente
                  shadowColor: Colors.transparent, // Remove a sombra
                  elevation: 0, // Remove elevação
                  padding: EdgeInsets.zero, // Remove padding
                ),
              ),
              const Spacer(flex: 2),
              // Nome do usuário
              Center(
                child: Column(
                  children: [
                    // Placeholder para imagem de perfil
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.black12,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Nome do Usuário",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "emaildousuario@example.com",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // Descrição do usuário
              const Text(
                "Descrição do Usuário",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla at neque elit. Vestibulum vehicula congue tortor vitae volutpat. In hac habitasse platea dictumst.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const Spacer(flex: 2),
              // Seção de Favoritos
              const Text(
                "Favoritos",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black.withOpacity(0.2),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Nenhum favorito adicionado ainda.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              const Spacer(flex: 4),
            ],
          ),
        ),
      ),
    );
  }
}
