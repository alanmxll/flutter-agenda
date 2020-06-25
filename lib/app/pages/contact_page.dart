import 'package:flutter/material.dart';
import 'package:flutter_agenda/app/helpers/contact_helper.dart';

class ContactPage extends StatefulWidget {
  final Contact contact;

  ContactPage({this.contact});

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  Contact _editedContact;

  @override
  void initState() {
    super.initState();

    if (widget.contact == null) {
      _editedContact = Contact();
    } else {
      _editedContact = Contact.fromMap(widget.contact.toMap());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(_editedContact.name ?? 'New Contact'), centerTitle: true),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.save)),
    );
  }
}
