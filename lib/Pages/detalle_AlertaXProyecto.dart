import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:robots/Pages/ListaAlertasSuscritas.dart';


class detalle_AlertaXProyecto extends StatelessWidget {

  final String nombreEmpresa;
  final String state;


  detalle_AlertaXProyecto({Key key, @required this.nombreEmpresa, this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (state == '0')
    {
      return Scaffold(
        appBar: AppBar(title: Text(nombreEmpresa), backgroundColor: Color(0xffEE6060),
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
            ],
          ),
        ),
        body: Container(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 100),
            children: [

            ],
          ),
        ),
      );
    }
    else if (state == '1')
    {
      return Scaffold(
        appBar: AppBar(title: Text(nombreEmpresa), backgroundColor: Color(0xff56D04E),
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
            ],
          ),
        ),
        body: Container(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 100),
            children: [

            ],
          ),
        ),
      );
    }

  }
}