import 'package:flutter/material.dart';
import 'package:robots/Pages/detalle_AlertaXProyecto.dart';
import 'contact_data.dart';

class _ContactListItem extends StatelessWidget {
  final Contact _contact;

  _ContactListItem(this._contact);

  @override
  Widget build(BuildContext context) {

    if (_contact.state == '0')
    {
      return Container (
        child:
        SizedBox(
          //height: 90,
          child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(_contact.url),
            radius: 40,
            //child: Icon(Icons.block ),
            //backgroundColor: Colors.white,
          ),
          title: Center( heightFactor: 4.3, child: Text(_contact.fullName,
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          )
          ),
          onTap: (){
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => new detalle_AlertaXProyecto( nombreEmpresa: _contact.fullName),
              ),
            );
          },
        //subtitle: Text(_contact.email)
      ),
      ),
        color: Colors.red,
        //margin: EdgeInsets.all(20),
      );
    }
    else if (_contact.state == '1')
    {
      return Container (
        child:
        SizedBox(
          //height: 90,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(_contact.url),
              radius: 40,
              //child: Icon(Icons.block ),
              //backgroundColor: Colors.white,
            ),
            title: Center( heightFactor: 4.3, child: Text(_contact.fullName,
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            )
            ),
            onTap: (){
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => new detalle_AlertaXProyecto( nombreEmpresa: _contact.fullName),
                ),
              );
            },
            //subtitle: Text(_contact.email)
          ),
        ),
        color: Colors.green,
        //margin: EdgeInsets.all(20),
      );
    }
  }

}

/*
class _ContactListItem extends ListTile {

  _ContactListItem(Contact contact) :
        super(
          title : Text(contact.fullName),
          subtitle: Text(contact.email),
          leading: CircleAvatar(
              child: Text(contact.fullName[0])
          )
      );

}
*/

class ContactList extends StatelessWidget {

  final List<Contact> _contacts;

  ContactList(this._contacts);

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: _buildContactList()
    );
  }

  List<_ContactListItem> _buildContactList() {
    return _contacts.map((contact) => _ContactListItem(contact))
        .toList();
  }

}

class ContactsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("Contacts"),
        ),
        body: ContactList(kContacts)
    );
  }

}