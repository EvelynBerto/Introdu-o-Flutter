import 'package:flutter/material.dart';
import 'package:introducao_flutter/singleton.dart';
import 'package:introducao_flutter/singleton_build.dart';

class HomePage extends StatelessWidget {
  //Não consigo fazer alteração nessa tela
  String texto = "Texto Inicial";
  //Toda tela precisa de uma sustentação - Como o Scaffold

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless"),
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(texto),
            Text('${context.id}'),
            ElevatedButton(onPressed: (){
              texto = "Texto alterado";
            }, child: Text("Alterar Texto")),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/stateful');
            }, child: Text("Ir para stateful"))
          ],
        ),
      ),
    );
  }
}