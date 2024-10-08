import 'package:flutter/material.dart';

class AddPetScreen extends StatelessWidget {
  const AddPetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Adicionar Pet para adoção:"),
        ),
        body: Column(
          children: [
            Spacer(),
            TextField(
              decoration: InputDecoration(hintText: "Digite o nome do Pet..."),
            ),
            ElevatedButton(
                onPressed: () {}, child: Text("Selecione uma foto do Pet")),
            TextField(
              decoration: InputDecoration(hintText: "Digite a raça do Pet..."),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Digite a idade do Pet..."),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Digite o peso do Pet..."),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Descreva seu Pet, manias, curiosidades..."),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
