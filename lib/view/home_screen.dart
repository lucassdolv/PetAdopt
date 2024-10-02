import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text("Skip"),
                    Icon(Icons.skip_next),
                  ],
                )),
            Image.asset("assets/images/HomeDog.png"),
            Center(
              child: Text("Ready to make a"),
            ),
            Center(
              child: Text("new friend?"),
            ),
            Spacer(),
            Center(
              child: Text("Select your profile and simply search"),
            ),
            Center(
              child: Text("for pets near you"),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(onPressed: () {},
               child: Text("Get Started")),
            )

          ],
        ),
      ),
    );
  }
}
