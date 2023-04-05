import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:smart_kandang/constants.dart';

class ConditionDHT extends StatelessWidget {
  final String documentId;

  ConditionDHT({required this.documentId});

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

            if (data['dht'] == 28) {
              return Text(
                'Pertahankan Suhu Kandang',
                style: TextStyle(
                  color: PrimaryColor,
                  fontSize: 12,
                ),
              );
            } else if (data['dht'] >= 27) {
              return Text(
                'Suhu kandang terlalu rendah, nyalakan penghangat',
                style: TextStyle(
                  color: PrimaryColor,
                  fontSize: 12,
                ),
              );
            } else if (data['dht'] >= 29 && data['dht'] <= 50) {
              return Text(
                'Suhu kandang terlalu tinggi, nyalakan pendingin',
                style: TextStyle(
                  color: PrimaryColor,
                  fontSize: 12,
                ),
              );
            } else {
              return Text(
                'Kemari, kandang kebakaran!!!',
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
