import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:robots/Pages/ListaAlertasSuscritas.dart';

class LoginPage extends StatelessWidget {
  Widget createEmailInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: TextFormField(
          decoration: InputDecoration(hintText: 'Usuario'),
          textAlign: TextAlign.center),
    );
  }

  Widget createPassInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Contraseña'),
        obscureText: true,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget Espacios() {
    return Padding(
      padding: const EdgeInsets.only(top: 80)
    );
  }

  Widget createButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: ElevatedButton(
        child: Text('Entrar'),
        onPressed: () {
          Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => new ListaAlertasSuscritas(),
            ),
          );
        },
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 60),
      decoration: BoxDecoration(color: Colors.white),
      child: ListView(
        children: [
          Espacios(),
          Image.asset('assets/images/WASolutions.png', width: 900, height: 150, scale: 1.0),
          createEmailInput(),
          createPassInput(),
          createButton(context),
          Espacios(),
        ],
      ),
    ),
      floatingActionButton: FloatingActionButton(
      onPressed: (){showDialog(context: context,
          builder: (context) => AlertDialog(
              title: Text("Ayuda"),
              content: Text("Para mas informacion comuniquese a soporte@wasolutions.co o tambien al celular +57 312 329 4131")
          )
      );
      },
      tooltip: 'Increment',
      child: const Icon(Icons.help_outline, color: Colors.grey,),
        backgroundColor: Colors.white,
    ),
    );
  }
}
