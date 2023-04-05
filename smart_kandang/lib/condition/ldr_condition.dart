import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:smart_kandang/constants.dart';

class ConditionLDR extends StatelessWidget {
  final String documentId;

  ConditionLDR({required this.documentId});

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

            if (data['ldr'] >= 6) {
              return Text(
                'Kandang dalam kondisi terang',
                style: TextStyle(
                  color: PrimaryColor,
                  fontSize: 12,
                ),
              );
            } else {
              return Text(
                'Kemari, kandang butuh penerangan!',
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
