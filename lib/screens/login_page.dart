import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Digite o seu Email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Digite a sua senha"),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Fazer login"))
          ],
        ),
      ),
    );
  }
}
