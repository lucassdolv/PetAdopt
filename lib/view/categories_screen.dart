import 'package:flutter/material.dart';
import 'package:pet_adopt/widgets/card_categories.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {}, child: Text("Adicionar para adoção")),
                ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [Text("Perfil"), Icon(Icons.person)],
                    ))
              ],
            ),
            TextField(
              decoration: InputDecoration(hintText: "Pesquisar categoria:"),
            ),
            SingleChildScrollView(
              //caso seja adicionado mais categorias futuramente
              child: Column(
                children: [
                  CardCategories(),
                  CardCategories(),
                  CardCategories(),
                  CardCategories(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
