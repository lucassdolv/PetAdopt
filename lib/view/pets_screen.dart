import 'package:flutter/material.dart';
import 'package:pet_adopt/widgets/pet_card_screen.dart';

class PetsScreen extends StatelessWidget {
  const PetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: "Pesquisar categoria:"),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  PetCardScreen(),
                  PetCardScreen(),
                  PetCardScreen(),
                  PetCardScreen(),
                  PetCardScreen(),
                  PetCardScreen(),
                  PetCardScreen(),
                  PetCardScreen(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}