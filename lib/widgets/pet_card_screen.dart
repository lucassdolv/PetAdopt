import 'package:flutter/material.dart';

class PetCardScreen extends StatelessWidget {
  const PetCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        width: 1,
        color: Colors.black,
      )),
      child: Column(
        children: [
          Image.asset("assets/images/HomeDog.png"),
          Text("Animal"),
          ElevatedButton(onPressed: () {}, child: Text("Ver"))
        ],
      ),
    );
  }
}