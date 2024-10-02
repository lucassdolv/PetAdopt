import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login de usuario"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Icon(Icons.skip_previous)),
            Spacer(),
            TextField(
              decoration: InputDecoration(hintText: "Digite seu email"),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Digite sua senha"),
            ),
            Spacer(),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Entrar")),
                ElevatedButton(
                    onPressed: () {}, child: Text("Não possuo conta"))
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
