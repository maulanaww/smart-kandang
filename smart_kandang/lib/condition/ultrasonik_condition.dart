import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:smart_kandang/constants.dart';

class ConditionUltrasonik extends StatelessWidget {
  final String documentId;

  ConditionUltrasonik({required this.documentId});

  @override
  Widget build(BuildContext context) {
    //get collection
    CollectionReference sensor =
        FirebaseFirestore.instance.collection('sensor');

    return FutureBuilder<DocumentSnapshot>(
        future: sensor.doc(documentId).get(),
        builder: ((context, snapshoot) {
          if (snapshoot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshoot.data!.data() as Map<String, dynamic>;

            if (data == 1) {
              return Text(
                'Datanglah 3 hari lagi untuk mengisi pakan',
                style: TextStyle(
                  color: PrimaryColor,
                  fontSize: 12,
                ),
              );
            } else if (data == 2) {
              return Text(
                'Datanglah 2 hari lagi untuk mengisi pakan',
                style: TextStyle(
                  color: PrimaryColor,
                  fontSize: 12,
                ),
              );
            } else if (data == 3) {
              return Text(
                'Datanglah 1 hari lagi untuk mengisi pakan',
                style: TextStyle(
                  color: PrimaryColor,
                  fontSize: 12,
                ),
              );
            } else if (data == 4) {
              return Text(
                'Kemari, pakan hampir habis!',
                style: TextStyle(
                  color: PrimaryColor,
                  fontSize: 12,
                ),
              );
            } else {
              return Text(
                'Data sensor tidak ditemukan!!!',
                style: TextStyle(
                  color: PrimaryColor,
                  fontSize: 12,
                ),
              );
            }
          }
          return Text('loading...');
        }));
  }
}
