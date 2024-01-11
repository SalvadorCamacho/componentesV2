import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Alert page'),
          backgroundColor: Colors.deepPurpleAccent,
          elevation: 30
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () => _mostrarAlert(context),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red, elevation: 20),
              child: const Text('Mostrar alerta')),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back_ios),
        ),


      );
  }

  _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
               shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(20)),
               title: const Text('Título'),
               content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                     Text('Esto es un mensaje'),
                     FlutterLogo(size: 50.0)
                  ],
               ),
               actions: <Widget>[
                   TextButton(
                    //al dar clic ve a la ventana inmediata anterior
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancelar'),
                    ),
                   TextButton(
                    //al dar clic ve a la ventana inmediata anterior
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('OK'),
                    )
               ],
           );
        }
      );
  }
}




class Hero{
  String? power;
  String? name;

   Hero({power: "dinero", name:"Batman"});

}