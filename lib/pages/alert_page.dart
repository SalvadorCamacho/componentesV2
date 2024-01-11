import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Alert page'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () => _mostrarAlert(context),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red, elevation: 20),
              child: const Text('Mostrar alerta')),
        ));
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
               )
           );
        }
      );
  }
}
