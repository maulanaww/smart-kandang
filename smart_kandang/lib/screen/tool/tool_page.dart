import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:smart_kandang/constants.dart';

class ToolPage extends StatefulWidget {
  const ToolPage({super.key});

  @override
  State<ToolPage> createState() => _ToolPageState();
}

class _ToolPageState extends State<ToolPage> {
  //padding constrants
  final double horizontalPadding = 20;
  final double verticalPadding = 20;

  //controller
  final _dhtController = TextEditingController();
  final _ldrController = TextEditingController();
  final _ultrasonikController = TextEditingController();
  final dht1 = "Pertahankan Suhu Kandang";
  final dht2 = "Suhu kandang terlalu rendah, nyalakan Penghangat";
  final dht3 = "Suhu kandang terlalu tinggi, nyalakan pendingin";
  final ldr1 = "Kemari, kandang butuh penerangan!";
  final ldr2 = "Kandang dalam kondisi terang";
  final ultrasonik1 = "Datanglah 4 hari lagi untuk mengisi pakan";
  final ultrasonik2 = "Datanglah 3 hari lagi untuk mengisi pakan";
  final ultrasonik3 = "Datanglah 2 hari lagi untuk mengisi pakan";
  final ultrasonik4 = "Datanglah 1 hari lagi untuk mengisi pakan";
  final ultrasonik5 = "Salah woyy!!!";

  @override
  void dispose() {
    _dhtController.dispose();
    _ldrController.dispose();
    _ultrasonikController.dispose();
  }

  Future conditionDHT() async {
    conditionDht(int data_dht) {
      if (int.parse(_dhtController.text.trim()) == 28) {
        return dht1;
      } else if (int.parse(_dhtController.text.trim()) <= 27) {
        return dht2;
      } else {
        return dht3;
      }
    }
  }

  Future conditionLDR() async {
    conditionDht(int data_ldr) {
      if (int.parse(_ldrController.text.trim()) <= 5) {
        return ldr1;
      } else {
        return ldr2;
      }
    }
  }

  conditionUltrasonik() {
    if (int.parse(_ultrasonikController.text.trim()) == 1) {
      return ultrasonik1;
    } else if (int.parse(_ultrasonikController.text.trim()) == 2) {
      return ultrasonik2;
    } else if (int.parse(_ultrasonikController.text.trim()) == 3) {
      return ultrasonik3;
    } else if (int.parse(_ultrasonikController.text.trim()) == 4) {
      return ultrasonik4;
    } else {
      return ultrasonik5;
    }
  }

  Future condition() async {
    await FirebaseFirestore.instance.collection('condition').add({
      'dht': conditionDHT(),
      'ldr': conditionLDR(),
      'ultrasonik': conditionUltrasonik(),
    });
  }

  Future readData() async {
    await FirebaseFirestore.instance.collection('sensor').add({
      'dht': int.parse(_dhtController.text.trim()),
      'ldr': int.parse(_ldrController.text.trim()),
      'ultrasonik': int.parse(_ultrasonikController.text.trim()),
    });
    condition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: NavColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Tool Simulators',
                      style: TextStyle(fontSize: 30, color: PrimaryColor),
                    ),
                    Text(
                      'select a value for the sensor',
                      style: TextStyle(color: PrimaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          color: NavColor,
                          child: Column(children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(children: [
                                    Container(
                                      height: 240,
                                      width: 180,
                                      padding: EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                          color: SearchColor,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color: SearchColor,
                                              blurRadius: 10,
                                              spreadRadius: 5,
                                            ),
                                          ]),
                                      child: Center(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/suhu.png',
                                              height: 100,
                                            ),
                                            Text(
                                              'DHT',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: NavColor),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                              ),
                                              child: TextFormField(
                                                controller: _dhtController,
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: NavColor,
                                                ),
                                                showCursor: true,
                                                cursorColor: NavColor,
                                                decoration: InputDecoration(
                                                    hintText: "Masukkan Nilai",
                                                    labelText: "Nilai",
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                    .circular(
                                                                20.0)),
                                                    labelStyle: TextStyle(
                                                        color: NavColor),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: NavColor,
                                                                width: 2.0),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0)),
                                                    enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: NavColor,
                                                            width: 2.0),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                20.0))),
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return 'Nilai tidak boleh kosong';
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ]),
                                  Column(children: [
                                    Container(
                                      height: 240,
                                      width: 180,
                                      padding: EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                          color: SearchColor,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color: SearchColor,
                                              blurRadius: 10,
                                              spreadRadius: 5,
                                            ),
                                          ]),
                                      child: Center(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/lamp.png',
                                              height: 100,
                                            ),
                                            Text(
                                              'LDR',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: NavColor),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                              ),
                                              child: TextFormField(
                                                controller: _ldrController,
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: NavColor,
                                                ),
                                                showCursor: true,
                                                cursorColor: NavColor,
                                                decoration: InputDecoration(
                                                    hintText: "Masukkan Nilai",
                                                    labelText: "Nilai",
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                    .circular(
                                                                20.0)),
                                                    labelStyle: TextStyle(
                                                        color: NavColor),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: NavColor,
                                                                width: 2.0),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0)),
                                                    enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: NavColor,
                                                            width: 2.0),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                20.0))),
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return 'Nilai tidak boleh kosong';
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ]),
                                ]),
                            SizedBox(
                              height: 20,
                            ),
                            Column(children: [
                              Column(children: [
                                Container(
                                  child: Container(
                                    height: 220,
                                    width: 400,
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                        color: SearchColor,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: SearchColor,
                                            blurRadius: 10,
                                            spreadRadius: 5,
                                          ),
                                        ]),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                'assets/images/pakan.png',
                                                height: 100,
                                              ),
                                              Text(
                                                'Ultrasonik',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: NavColor),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                            ),
                                            child: TextFormField(
                                              controller: _ultrasonikController,
                                              style: TextStyle(
                                                fontSize: 14.0,
                                                color: NavColor,
                                              ),
                                              showCursor: true,
                                              cursorColor: NavColor,
                                              decoration: InputDecoration(
                                                  hintText: "Masukkan Nilai",
                                                  labelText: "Nilai",
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          new BorderRadius
                                                              .circular(20.0)),
                                                  labelStyle: TextStyle(
                                                      color: NavColor),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color:
                                                                      NavColor,
                                                                  width: 2.0),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0)),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color:
                                                                      NavColor,
                                                                  width: 2.0),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0))),
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Nilai tidak boleh kosong';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ]),
                              SizedBox(
                                height: 30,
                              ),
                              ElevatedButton(
                                onPressed: readData,
                                child: Text("Read Data",
                                    style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 2,
                                        color: NavColor)),
                                style: ElevatedButton.styleFrom(
                                    primary: PrimaryColor,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 155),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              )
                            ]),
                          ])))),
            ],
          ),
        ));
  }
}
