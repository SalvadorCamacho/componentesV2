import 'package:componentes/providers/menu_providers.dart';
import 'package:flutter/material.dart';
import 'package:componentes/utils/icon_string.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
        centerTitle: true,
      ),
      body: _lista(),
    );
  }

  _lista() {
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: const [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _listaItems(snapshot.data!, context),
          );
        }
    );
  }

  _listaItems(List<dynamic> data, BuildContext context) {
    //lista de widgets vacía
    final List<Widget> opciones = [];
    
    for (var opt in data) {
      final widgetTemp = ListTile(
          title: Text(opt['texto']),
          leading: getIcon(opt['icon']),
          trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: () {
            Navigator.pushNamed(context, opt['ruta']);
          });
      opciones
        ..add(widgetTemp)
        ..add(const Divider());
    }
    return opciones;
  } //métod _lista
}  //clase
