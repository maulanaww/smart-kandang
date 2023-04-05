import 'package:flutter/material.dart';
import 'package:smart_kandang/bottom_nav.dart';
import 'package:smart_kandang/constants.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfile createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {
  TextEditingController controllerNama = new TextEditingController();
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //back page
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => NavBar()));
                  },
                  color: PrimaryColor,
                ),
                SizedBox(
                  width: 15,
                ),
                Text('Edit Profile',
                    style: TextStyle(
                        color: PrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Stack(
              children: [
                Container(
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
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 4, color: PrimaryColor),
                        color: NavColor),
                    child: Icon(
                      Icons.edit,
                      color: PrimaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: TextFormField(
              style: TextStyle(
                fontSize: 14.0,
                color: PrimaryColor,
              ),
              showCursor: true,
              cursorColor: PrimaryColor,
              decoration: InputDecoration(
                  hintText: "Username",
                  labelText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  labelStyle: TextStyle(color: PrimaryColor),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: PrimaryColor, width: 2.0),
                      borderRadius: BorderRadius.circular(30.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: PrimaryColor, width: 2.0),
                      borderRadius: BorderRadius.circular(30.0))),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Username tidak boleh kosong';
                }
                return null;
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: TextFormField(
              style: TextStyle(
                fontSize: 14.0,
                color: PrimaryColor,
              ),
              showCursor: true,
              cursorColor: PrimaryColor,
              controller: controllerNama,
              decoration: InputDecoration(
                  hintText: "Masukkan Email",
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  labelStyle: TextStyle(color: PrimaryColor),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: PrimaryColor, width: 2.0),
                      borderRadius: BorderRadius.circular(30.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: PrimaryColor, width: 2.0),
                      borderRadius: BorderRadius.circular(30.0))),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Email tidak boleh kosong';
                }
                return null;
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: TextFormField(
              style: TextStyle(
                fontSize: 14.0,
                color: PrimaryColor,
              ),
              showCursor: true,
              cursorColor: PrimaryColor,
              decoration: InputDecoration(
                  hintText: "Masukkan Nomor Telepon",
                  labelText: "Nomor Telepon",
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  labelStyle: TextStyle(color: PrimaryColor),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: PrimaryColor, width: 2.0),
                      borderRadius: BorderRadius.circular(30.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: PrimaryColor, width: 2.0),
                      borderRadius: BorderRadius.circular(30.0))),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Nomor telepon tidak boleh kosong';
                }
                return null;
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: TextFormField(
              style: TextStyle(
                fontSize: 14.0,
                color: PrimaryColor,
              ),
              showCursor: true,
              cursorColor: PrimaryColor,
              decoration: InputDecoration(
                  hintText: "Masukkan Usia",
                  labelText: "Usia",
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  labelStyle: TextStyle(color: PrimaryColor),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: PrimaryColor, width: 2.0),
                      borderRadius: BorderRadius.circular(30.0)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: PrimaryColor, width: 2.0),
                      borderRadius: BorderRadius.circular(30.0))),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Usia tidak boleh kosong';
                }
                return null;
              },
            ),
          ),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => NavBar()));
                    },
                    child: Text("Cancel",
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: PrimaryColor)),
                    style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => NavBar()));
                    },
                    child: Text("Save",
                        style: TextStyle(
                            fontSize: 15, letterSpacing: 2, color: NavColor)),
                    style: ElevatedButton.styleFrom(
                        primary: PrimaryColor,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  )
                ],
              )),
        ])));
  }
}
