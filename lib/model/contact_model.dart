import 'package:flutter/material.dart';

class ContactModel {
  final String name;
  final IconData icon;
  final String title;
  final String link;
  ContactModel(this.name, this.icon, this.title, this.link);
}

List<ContactModel> contactList = [
  ContactModel("Address", Icons.location_pin, "Yangon, Myanmar", ''),
  ContactModel("Phone", Icons.phone, "09787027464", ''),
  ContactModel("Email", Icons.email, "eieikyaw.dev@gmail.com", ''),
  ContactModel("Message", Icons.sms, "+959787027464", ''),
];
