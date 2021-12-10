import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class ListaAlertasSuscritas extends StatelessWidget {

  @override
  /*Widget build(BuildContext context) {
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
  }*/
  Widget build(BuildContext context) {
    return SafeArea
      (child: Scaffold(
      appBar: AppBar(title: Text('Alertas')
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
              color: Colors.white,
              ),
                child: Column(
                    children: [
                        Expanded(child:
                            Image.asset('assets/images/WASolutions.png')
                        ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                ),
            ),
            ListTile(
              leading: Icon(Icons.wysiwyg),
              title: Text('Listado de Alertas'),
              onTap: (){} ,
            ),
            ListTile(
              leading: Icon(Icons.add_alert_outlined),
              title: Text('Activar Alertas'),
              onTap: (){} ,
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 100),
          children: [
            Text('Hola')
          ],
        ),
      ),
    ),
    );

  }


}
