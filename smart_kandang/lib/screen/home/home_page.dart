import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:smart_kandang/constants.dart';
import 'package:smart_kandang/read_data/get_dht.dart';
import 'package:smart_kandang/read_data/get_ldr.dart';
import 'package:smart_kandang/read_data/get_ultrasonik.dart';
import 'package:smart_kandang/screen/home/galeri/galeri1.dart';
import 'package:smart_kandang/screen/home/galeri/galeri2.dart';
import 'package:smart_kandang/screen/home/galeri/galeri3.dart';
import 'package:smart_kandang/condition/dht_condition.dart';
import 'package:smart_kandang/condition/ldr_condition.dart';
import 'package:smart_kandang/condition/ultrasonik_condition.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  final _controller = PageController();

  //documents
  List<String> docIDs = [];

  //get documets
  Future getDocId() async {
    await FirebaseFirestore.instance.collection('sensor').get().then(
          (snapshot) => snapshot.docs.forEach(
            (document) {
              print(document.reference);
              docIDs.add(document.reference.id);
            },
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final data_dht = ConditionDHT(documentId: docIDs[0]);

    return Scaffold(
      backgroundColor: PrimaryColor,
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                // Identitas singkat
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Nama App
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Smart Kandang',
                          style: TextStyle(
                              color: NavColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          user.email!,
                          style: TextStyle(color: NavColor),
                        )
                      ],
                    ),
                    //notification
                    Container(
                      decoration: BoxDecoration(
                          color: PrimaryColor,
                          borderRadius: BorderRadius.circular(12)),
                      child: IconButton(
                        icon: Icon(Icons.question_answer),
                        onPressed: () {},
                        color: NavColor,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // Search
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    fillColor: SearchColor,
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: NavColor,
                    ),
                    suffixIcon: const RotatedBox(
                      quarterTurns: 1,
                      child: Icon(
                        Icons.tune,
                        color: NavColor,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                //konten
                Container(
                  width: 300,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: NavColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: FutureBuilder(
                      future: getDocId(),
                      builder: (context, snapshoot) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GetDHT(documentId: docIDs[1]),
                            SizedBox(height: 5),
                            ConditionDHT(documentId: docIDs[1]),
                            SizedBox(height: 10),
                            GetUltrasonik(documentId: docIDs[1]),
                            SizedBox(height: 5),
                            ConditionUltrasonik(documentId: docIDs[1]),
                            SizedBox(height: 10),
                            GetLDR(documentId: docIDs[1]),
                            SizedBox(height: 5),
                            ConditionLDR(documentId: docIDs[1]),
                          ],
                        );
                      }),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(25),
            color: NavColor,
            child: Center(
                child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Media',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                // listview Media
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  child: ListView(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    children: [Galeri1(), Galeri2(), Galeri3()],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: PrimaryColor,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                )
              ],
            )),
          ))
        ]),
      ),
    );
  }
}
