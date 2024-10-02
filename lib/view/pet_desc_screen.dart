import 'package:flutter/material.dart';

class PetDescScreen extends StatelessWidget {
  const PetDescScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Icon(Icons.skip_previous)),
            Image.asset("assets/images/HomeDog.png"),
            Text("Nome do animal"),
            Spacer(),
            Row(
              children: [
                Spacer(),
                Container(
                  child: Column(
                    children: [Text("Idade"), Text("info.")],
                  ),
                ),
                Spacer(),
                Container(
                  child: Column(
                    children: [Text("Peso"), Text("info")],
                  ),
                ),
                Spacer(),
                Container(
                  child: Column(
                    children: [Text("Sexo"), Text("info")],
                  ),
                ),
                Spacer()
              ],
            ),
            Spacer(),
            Text("Descrição"),
            Text(
                "Desc. ioghsduibgsdnbgodsbgsudgnsdejgbnpsduibvgsduiongspuiongbsugbsdpuigbvsgvsuidbgusbegsuidbvsjidbsdubvnsunusdnbvpuisdeuseuibnsuibusnbu"),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Adotar")),
                ElevatedButton(
                    onPressed: () {}, child: Icon(Icons.favorite_outline))
              ],
            )
          ],
        ),
      ),
    );
  }
}
