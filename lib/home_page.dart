import 'package:flutter/material.dart';


class HomePageStateFul extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageStateFulState();
  }
  //guardando no espaço da memória o estado do widget
}

class _HomePageStateFulState extends State<HomePageStateFul> {

  @override
  void initState() {
    // TODO: implement initState
    //não podemos usar o context pois ainda não está preparado
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    //podemos utilizar o nosso contexto
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    //na hora que sai da tela descarta algum recurso ou chama alguma coisa
    super.dispose();
  }

  String texto = "Texto inicial";
  //Toda tela precisa de uma sustentação - Como o Scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateFul"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(texto),
            ElevatedButton(onPressed: (){
              setState(() {
                texto = "Texto Alterado";
              });
            }, child: Text("Alterar Texto"))
          ],
        ),
      ),
    );
  }
}