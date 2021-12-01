import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String name;
  String mail;
  String password;
  bool keepOn;

  User({this.name, this.mail, this.password, this.keepOn});

  User.fromSnapshot(DocumentSnapshot snapshot) : 
    name = snapshot.data["name"],
    mail = snapshot.data["mail"],
    password = snapshot.data["password"],
    keepOn = snapshot.data["keepOn"];
    

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "mail": mail,
      "password": password,
      "keepOn": keepOn,
    };
  }
}