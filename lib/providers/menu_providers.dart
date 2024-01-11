import 'dart:convert';
import 'package:flutter/services.dart';

class _MenuProvider {
  //Lista vacía para cargar íconos del archivo .json
  List<dynamic> opciones = [];
  _MenuProvider() {
    cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

//Instancia del constructor (para que cargue los datos)
final menuProvider = _MenuProvider();
