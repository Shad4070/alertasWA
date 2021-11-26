import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class ListaAlertasSuscritas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Alertas Activas')
      ),
    body: Container(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 100),
        children: [
          Text('Hola')
        ],
      ),
    ),
    );

  }
}
