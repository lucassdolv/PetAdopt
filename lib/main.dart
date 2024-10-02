import 'package:flutter/material.dart';
import 'package:pet_adopt/view/cadastro_screen.dart';
import 'package:pet_adopt/view/categories_screen.dart';
import 'package:pet_adopt/view/home_screen.dart';
import 'package:pet_adopt/view/login_screen.dart';
import 'package:pet_adopt/view/pet_desc_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CategoriesScreen(),
    );
  }
}
