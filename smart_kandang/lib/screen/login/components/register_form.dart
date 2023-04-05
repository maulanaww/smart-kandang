import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_kandang/constants.dart';

import 'package:smart_kandang/screen/login/login.dart';
import 'package:smart_kandang/controller/index.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({
    Key? key,
    required this.isLogin,
    required this.animationDuration,
    required this.size,
    required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;

  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  int _nomorTelepon = 0;
  int _usia = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isLogin ? 0.0 : 1.0,
      duration: animationDuration * 5,
      child: Visibility(
        visible: !isLogin,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: size.width,
            height: defaultLoginSize,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Welcome',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(height: 40),
                  Image.asset(
                    'assets/images/logo3.png',
                    height: 160,
                  ),
                  SizedBox(height: 40),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: PrimaryColor.withAlpha(50)),
                      child: TextField(
                          controller: _emailController,
                          cursorColor: PrimaryColor,
                          decoration: InputDecoration(
                              icon: Icon(Icons.mail, color: PrimaryColor),
                              hintText: 'Email',
                              border: InputBorder.none))),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: PrimaryColor.withAlpha(50)),
                      child: TextField(
                          controller: _usernameController,
                          cursorColor: PrimaryColor,
                          decoration: InputDecoration(
                              icon: Icon(Icons.mail, color: PrimaryColor),
                              hintText: 'Username',
                              border: InputBorder.none))),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: PrimaryColor.withAlpha(50)),
                      child: TextField(
                          controller: _passwordController,
                          cursorColor: PrimaryColor,
                          obscureText: true,
                          decoration: InputDecoration(
                              icon: Icon(Icons.lock, color: PrimaryColor),
                              hintText: 'Password',
                              border: InputBorder.none))),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () async {
                      FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: _emailController.text,
                          password: _passwordController.text);
                      FirebaseFirestore.instance.collection('users').add({
                        'email': _emailController.text,
                        'username': _usernameController.text,
                        'nomor telepon': _nomorTelepon,
                        'usia': _usia,
                        'password': _passwordController.text
                      }).then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      }).onError((error, stackTrace) {
                        print("Error ${error.toString()}");
                      });
                    },
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: PrimaryColor,
                      ),
                      padding: EdgeInsets.symmetric(vertical: 20),
                      alignment: Alignment.center,
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
