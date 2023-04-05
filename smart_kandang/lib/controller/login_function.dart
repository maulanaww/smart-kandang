import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:smart_kandang/controller/index.dart';

Future<User?> loginUsingEmailPassword(
    {required String email,
    required String password,
    required BuildContext context}) async {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  try {
    UserCredential userCredential =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    user = userCredential.user;
  } on FirebaseAuthException catch (e) {
    if (e.code == "user-not-found") {
      print("User tidak ditemukan, mohon masukkan email yang benar");
    } else if (e.code == 'wrong-password') {
      print('Password salah, mohon masukkan password yang benar');
    }
  }
  return user;
}
