import 'package:flutter/material.dart';

class CadastroScreen extends StatelessWidget {
  const CadastroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cadastro de usuario"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Icon(Icons.skip_previous)),
            Spacer(),
            TextField(
              decoration: InputDecoration(
                hintText: "Digite seu nome completo",
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Digite seu email"),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Digite sua senha"),
            ),
            Spacer(),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Cadastrar")),
                ElevatedButton(onPressed: () {}, child: Text("Ja possuo conta"))
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
