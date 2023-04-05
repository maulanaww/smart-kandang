import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_kandang/constants.dart';
import 'package:smart_kandang/screen/login/login.dart';
import 'package:smart_kandang/screen/profile/edit_profile.dart';
import 'package:smart_kandang/screen/profile/item_box.dart';
import 'package:smart_kandang/user_model.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  FirebaseDatabase fireDB = FirebaseDatabase.instance;

  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController nomorTelepon = TextEditingController();
  TextEditingController usia = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();
    getUser();
  }

  var myUser = UserModel().obs;

  getUser() {
    String uid = FirebaseAuth.instance.currentUser!.uid;
    FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .snapshots()
        .listen((event) {
      myUser.value = UserModel.fromJson(event.data()!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: NavColor,
        body: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //back page
                IconButton(
                  icon: Icon(Icons.logout_outlined),
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                    ;
                  },
                  color: PrimaryColor,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(width: 4, color: PrimaryColor),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: PrimaryColor.withOpacity(0.1))
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/profile.png'))),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ItemBox(
              itemName: 'Username', inputName: 'Nabila Arrohmah', jarak: 37),
          SizedBox(
            height: 15,
          ),
          ItemBox(itemName: 'Email', inputName: 'bilaaja@yahoo.com', jarak: 66),
          SizedBox(
            height: 15,
          ),
          ItemBox(itemName: 'Nomor Telepon', inputName: '0826673829', jarak: 5),
          SizedBox(
            height: 15,
          ),
          ItemBox(itemName: 'Usia', inputName: '18 Tahun', jarak: 72),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 180.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => EditProfile()));
              },
              borderRadius: BorderRadius.circular(30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: PrimaryColor,
                ),
                padding: EdgeInsets.all(12),
                alignment: Alignment.center,
                child: Text(
                  'Edit Profile',
                  style: TextStyle(color: NavColor, fontSize: 18),
                ),
              ),
            ),
          ),
        ])));
  }
}
