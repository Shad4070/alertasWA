import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:robots/Pages/ListaAlertasSuscritas.dart';

class LoginPage extends StatelessWidget {
  Widget createEmailInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 125),
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
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(color: Colors.white),
      child: ListView(
        children: [
          Image.asset('assets/images/WA150.png', width: 900, height: 150),
          createEmailInput(),
          createPassInput(),
          createButton(context),
        ],
      ),
    ));
  }
}
