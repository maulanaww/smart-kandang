import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:smart_kandang/constants.dart';

class GetLDR extends StatelessWidget {
  final String documentId;

  GetLDR({required this.documentId});

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
            return Text(
              'Pencahayaan : ' + '${data['ldr']}' + ' cd',
              style: TextStyle(
                color: PrimaryColor,
                fontSize: 20,
              ),
            );
          }
          return Text('loading...');
        }));
  }
}
