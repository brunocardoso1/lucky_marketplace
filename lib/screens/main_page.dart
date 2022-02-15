import 'package:flutter/material.dart';
import 'package:login_page/components/cards.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, condition) {
            return <Widget>[
              SliverAppBar(
                leading: IconButton(icon: Icon(Icons.menu), onPressed: () {},),
                actions: <Widget> [
                  IconButton(icon: Icon(Icons.refresh), onPressed: (){})
                ],
                expandedHeight: 400,
                backgroundColor: Colors.transparent,
                floating: false,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true, 
                    title: Text('Bem vindo ao Marketplace!'),
                    background: Image.network("https://assetstorev1-prd-cdn.unity3d.com/package-screenshot/3c9c12f5-0c83-4c87-8687-1226d52f97ca_scaled.jpg",
                      fit: BoxFit.cover,
                      color: Colors.black.withOpacity(0.4),
                      colorBlendMode: BlendMode.overlay,),
                ),
              )
            ];
          },
          body: Container(
            color: Colors.black,
            child: Column(
              children: [
                buildCards("Sorcerer lvl 30", "Char iniciante para quem esta começando no game agora"),
              ],
            ) ,
            ),
          ),
        ),
    );
  }
}
