import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Perfil de Usuario:"),
        ),
        body: Column(
          children: [
            // Image(),
            Text("Nome de usuario"),
            Text("email do usuario"),
            Text("Descrição do usuario: Lorem Ipsu diosnduiogbsdfujdb hsfdf bisvudfhisdavf khgaifshj gdfgjlsjdg "),
            Container(
              child: Column(
                children: [
                  Text("Favoritos:")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}