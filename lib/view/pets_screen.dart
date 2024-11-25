import 'package:flutter/material.dart';
import 'package:pet_adopt/controller/pet_controller.dart';
import 'package:pet_adopt/widgets/pet_card_screen.dart';
import 'package:pet_adopt/model/pet_model.dart';

class PetsScreen extends StatefulWidget {
  const PetsScreen({super.key});

  @override
  _PetsScreenState createState() => _PetsScreenState();
}

class _PetsScreenState extends State<PetsScreen> {
  late Future<List<PetModel>> pets;

  @override
  void initState() {
    super.initState();
    pets = PetController().fetchPets();  // Chama a função para buscar os pets
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Pets"),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // Aqui você pode adicionar os botões para Adicionar e Perfil

              const SizedBox(height: 20),
              // Campo de pesquisa de pet
              TextField(
                decoration: InputDecoration(
                  hintText: "Pesquisar Pet:",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1.5,
                    ),
                  ),
                  prefixIcon: const Icon(Icons.search, color: Colors.black),
                ),
              ),
              const SizedBox(height: 20),
              // Lista de pets
              Expanded(
                child: FutureBuilder<List<PetModel>>(
                  future: pets,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Erro: ${snapshot.error}'));
                    } else if (snapshot.hasData) {
                      List<PetModel> petList = snapshot.data!;
                      return GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, 
                          crossAxisSpacing: 5, 
                          mainAxisSpacing: 10, 
                          childAspectRatio: 0.83,
                        ),
                        itemCount: petList.length,
                        itemBuilder: (context, index) {
                          return PetCardScreen(dog: petList[index]); // Passa o pet individual
                        },
                      );
                    } else {
                      return const Center(child: Text('Nenhum pet encontrado.'));
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
