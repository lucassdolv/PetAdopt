import 'package:flutter/material.dart';

class PetDescScreen extends StatelessWidget {
  const PetDescScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Botão de voltar
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    Icon(Icons.chevron_left, color: Colors.black),
                    Text("Voltar")
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  elevation: 0,
                ),
              ),
              // Imagem ocupando uma proporção menor da tela
              SizedBox(
                height: 380,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/HomeDog.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              // Nome do animal centralizado e em negrito
              Center(
                child: const Text(
                  "Nome do Animal",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Linha com 3 quadrados de informações
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Primeiro quadrado: Idade
                  Container(
                    width: 90, // Ajuste da largura
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.lightBlue.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: const [
                        Text(
                          "Idade",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "2 anos",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Segundo quadrado: Peso
                  Container(
                    width: 90,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.lightBlue.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: const [
                        Text(
                          "Peso",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "10kg",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Terceiro quadrado: Sexo
                  Container(
                    width: 90,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.lightBlue.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: const [
                        Text(
                          "Sexo",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Macho",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Título descrição
              const Text(
                "Descrição",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              // Descrição do animal
              const Text(
                "Este é um cão muito amigável e energético. Adora brincar e correr no parque. Está vacinado e pronto para adoção.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              // Botões de Adoção e Favoritar
              Row(
                children: [
                  // Botão "Adotar" ocupa quase todo o espaço da linha
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Ação de adotar
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10), // Mantido o tamanho do padding
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "Adotar",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10), // Espaço entre os botões
                  ElevatedButton(
                    onPressed: () {
                      // Ação de favoritar
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child:
                        const Icon(Icons.favorite_outline, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
