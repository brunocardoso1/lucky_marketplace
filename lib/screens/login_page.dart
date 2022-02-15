import 'package:flutter/material.dart';
import 'package:login_page/screens/main_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.grey[600],
              Colors.white,
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Bem vindo ao Marketplace",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            RichText(
                text: TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                  TextSpan(text: 'Luck'),
                  TextSpan(
                      text: 'y ', style: TextStyle(color: Colors.red[900])),
                  TextSpan(text: 'Luck'),
                  TextSpan(
                      text: 'y ', style: TextStyle(color: Colors.red[900])),
                  TextSpan(text: 'Luck'),
                  TextSpan(
                      text: 'y ', style: TextStyle(color: Colors.red[900])),
                ])),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: TextField(

                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    labelText: "Digite o seu Email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    labelText: "Digite a sua senha"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
              primary: Colors.red[900],
              ),
                onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(),
                  ),
                );
                },
                child: Text("Fazer login"),

            ),
          ],
        ),
      ),
    );
  }
}
