// import 'package:flutter/material.dart';
// import 'package:pet_adopt/widgets/card_categories.dart';

// class CategoriesScreen extends StatelessWidget {
//   const CategoriesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text("Categorias"),
//           centerTitle: true,
//           automaticallyImplyLeading: false,
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(
//             children: [
//               // Botões no topo (Adicionar e Perfil)
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 20, vertical: 10),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                     child: const Text(
//                       "Adicionar para adoção",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 20, vertical: 10),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                     child: const Row(
//                       children: [
//                         Text(
//                           "Perfil",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         SizedBox(
//                             width:
//                                 5), // Pequeno espaçamento entre texto e ícone
//                         Icon(
//                           Icons.person,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               // Campo de pesquisa de categoria
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Pesquisar categoria:",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                     borderSide: const BorderSide(
//                       color: Colors.black,
//                       width: 1,
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                     borderSide: const BorderSide(
//                       color: Colors.black,
//                       width: 1.5,
//                     ),
//                   ),
//                   prefixIcon: const Icon(Icons.search, color: Colors.black),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               // GridView para organizar os cards em duas colunas
//               Expanded(
//                 child: GridView.builder(
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2, // Dois cards por linha
//                     crossAxisSpacing: 5, // Espaçamento horizontal
//                     mainAxisSpacing: 10, // Espaçamento vertical
//                     childAspectRatio:
//                         0.83, // Proporção dos cards (altura x largura)
//                   ),
//                   itemCount: 6, // Número de cards
//                   itemBuilder: (context, index) {
//                     return const CardCategories();
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
