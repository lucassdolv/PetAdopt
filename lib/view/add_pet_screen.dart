import 'package:flutter/material.dart';
import 'package:pet_adopt/models/Dog_model.dart';

class AddPetScreen extends StatelessWidget {
  AddPetScreen({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController breedController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<DogModel> dogs = [];

    void salvarInfo() {
      dogs.add(DogModel(
          age: int.tryParse(ageController.text) ?? 0,
          breed: breedController.text,
          description: descriptionController.text,
          name: nameController.text,
          gender: genderController.text,
          weight: double.tryParse(weightController.text) ?? 0));
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Adicionar Pet para adoção"),
          centerTitle: true,
          automaticallyImplyLeading: false,
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
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  elevation: 0,
                  padding: EdgeInsets.zero,
                ),
              ),
              const Spacer(flex: 2),
              // Campo Nome do Pet
              SizedBox(
                width: double.infinity,
                child: TextField(
                  controller: nameController, // Controlador do campo
                  decoration: InputDecoration(
                    hintText: "Digite o nome do Pet...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // Botão Selecionar Foto
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Selecione uma foto do Pet",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // Campo Raça do Pet
              SizedBox(
                width: double.infinity,
                child: TextField(
                  controller: breedController, // Controlador do campo
                  decoration: InputDecoration(
                    hintText: "Digite a raça do Pet...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // Campo Idade do Pet
              SizedBox(
                width: double.infinity,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: ageController, // Controlador do campo
                  decoration: InputDecoration(
                    hintText: "Digite a idade do Pet...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // Campo Sexo do Pet
              SizedBox(
                width: double.infinity,
                child: TextField(
                  controller: genderController, // Controlador do campo
                  decoration: InputDecoration(
                    hintText: "Digite o sexo do Pet...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // Campo Peso do Pet
              SizedBox(
                width: double.infinity,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: weightController, // Controlador do campo
                  decoration: InputDecoration(
                    hintText: "Digite o peso do Pet...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // Campo Descrição do Pet
              SizedBox(
                width: double.infinity,
                child: TextField(
                  controller: descriptionController, // Controlador do campo
                  decoration: InputDecoration(
                    hintText: "Descreva seu Pet, manias, curiosidades...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                  ),
                  maxLines: 4, // Permitir mais linhas de texto para descrição
                ),
              ),
              const Spacer(flex: 3),
              // Botão Adicionar Pet
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    salvarInfo();
                  }, // Chama a função ao pressionar
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "Adicionar Pet",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
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
