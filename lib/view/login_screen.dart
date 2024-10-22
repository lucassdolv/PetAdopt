import 'package:flutter/material.dart';
import 'package:pet_adopt/view/cadastro_screen.dart';
import 'package:pet_adopt/view/categories_screen.dart';
import 'package:pet_adopt/view/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login de usuário"),
          centerTitle: true,
          automaticallyImplyLeading: false, // Desativa o botão de voltar padrão
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Mantém alinhamento à esquerda
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
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
                  elevation: 0, // Remove a elevação
                  padding: EdgeInsets.zero, // Remove padding
                ),
              ),
              Spacer(
                flex: 4,
              ),
              SizedBox(
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Digite seu email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black
                            .withOpacity(0.2), // Borda com opacidade
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Digite sua senha",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black
                            .withOpacity(0.2), // Borda com opacidade
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              // Estilo atualizado para os botões
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CategoriesScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, // Fundo preto
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30), // Bordas arredondadas
                      ),
                    ),
                    child: Text(
                      "Entrar",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white, // Texto branco
                      ),
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CadastroScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, // Fundo preto
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30), // Bordas arredondadas
                      ),
                    ),
                    child: Text(
                      "Não possuo conta",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white, // Texto branco
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
