import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class detalle_AlertaXProyecto extends StatelessWidget {

  final String nombreEmpresa;


  detalle_AlertaXProyecto({Key key, @required this.nombreEmpresa}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(nombreEmpresa)
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