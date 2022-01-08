import 'package:flutter/material.dart';
import 'contact_data.dart';
import 'contact_view.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class ListaAlertasSuscritas extends StatelessWidget {

  @override

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
                onTap: (){
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                      new ListaAlertasSuscritas(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.add_alert_outlined),
                title: Text('Activar Alertas'),
                onTap: (){} ,
              ),
              Expanded(
                  child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Divider(),
                          ListTile(
                              leading: Icon(Icons.exit_to_app),
                              title: Text('Cerrar Sesión'),
                              onTap: (){}
                          ),
                        ],
                      ))),
            ],
          ),
        ),
      body: ContactList(kContacts)
      /*body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 100),
          children: [
            Text('Hola')
          ],
        ),
      ),*/
    ),
    );

  }


}
