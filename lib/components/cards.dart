
import 'package:flutter/material.dart';

Widget buildCards(String title, String description) => Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15)
  ),
  child: Column(
    children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
              image: NetworkImage(
                'https://i.pinimg.com/736x/9c/13/3f/9c133fb39d9f21e73f592655fe812bd4.jpg'
              ),
            child: InkWell(
              onTap: () {},
            ),
            height: 240,
            fit: BoxFit.cover,
          ),
        ],
      ),
      Text(title),
      ButtonBar(
        alignment: MainAxisAlignment.start,
        children: [
         TextButton(onPressed: () {},
              child: Text("Comprar agora")),
          TextButton(onPressed: () {},
              child: Text("Detalhes"))

        ],
      )
    ],
  ),
);