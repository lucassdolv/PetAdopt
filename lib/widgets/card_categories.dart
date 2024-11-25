// import 'package:flutter/material.dart';
// import 'package:pet_adopt/view/pets_screen.dart';

// class CardCategories extends StatelessWidget {
//   const CardCategories({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 50,
//       height: 100,
//       margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: Colors.black,
//           width: 1,
//         ),
//         borderRadius: BorderRadius.circular(10), // Bordas arredondadas
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // Adiciona um Padding para afastar a imagem do topo do card
//           Padding(
//             padding: const EdgeInsets.only(
//                 top: 5.0), // Ajusta o espaço acima da imagem
//             child: Image.asset(
//               "assets/images/HomeDog.png",
//               fit: BoxFit.cover,
//               width: double.infinity,
//               height: 130, // Ajuste da altura da imagem
//             ),
//           ),
//           const SizedBox(height: 8),
//           // Título do card
//           const Text(
//             "Animal",
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(
//               height: 8), // Adicionando espaçamento entre o texto e o botão
//           // Botão estilizado
//           Padding(
//             padding: const EdgeInsets.only(bottom: 8.0),
//             child: SizedBox(
//               height: 30, // Ajusta a altura do botão
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.of(context).push(
//                       MaterialPageRoute(builder: (context) => const PetsScreen()));
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 child: const Text(
//                   "Ver",
//                   style: TextStyle(
//                     fontSize: 12,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
