import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference pato = FirebaseFirestore.instance.collection('patoBurguer');

Future<void> updateUser() {
  return pato
    .doc('lanches')
    .update({'nome': 'Teste'})
    .then((value) => print("User Updated"))
    .catchError((error) => print("Failed to update user: $error"));
}