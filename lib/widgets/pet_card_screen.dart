import 'package:flutter/material.dart';
import 'package:pet_adopt/model/pet_model.dart';
import 'package:pet_adopt/view/pet_desc_screen.dart';
import 'package:pet_adopt/view/pets_screen.dart';

class PetCardScreen extends StatelessWidget {
  const PetCardScreen({
    super.key,
    required this.dog,  // Passando o pet corretamente
  });

  final PetModel dog;  // Usando PetModel

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 300,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Image.network(
              dog.images.isNotEmpty ? dog.images[0] : "assets/images/default.png",  // Exibe a primeira imagem
              fit: BoxFit.cover,
              width: double.infinity,
              height: 130,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "${dog.name}, ${dog.age} anos",  // Exibindo nome e idade
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: SizedBox(
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PetDescScreen(dog: dog), // Passando o dog para a tela de detalhes
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "Ver",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
