import 'package:flutter/material.dart';
import 'package:smart_kandang/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_kandang/controller/login_function.dart';
import 'package:smart_kandang/bottom_nav.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
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
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    final _auth = FirebaseAuth.instance;
    return AnimatedOpacity(
      opacity: isLogin ? 1.0 : 0.0,
      duration: animationDuration * 4,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: size.width,
          height: defaultLoginSize,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/logo4.png',
                  height: 160,
                ),
                SizedBox(height: 40),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: PrimaryColor.withAlpha(50)),
                  child: TextFormField(
                    controller: _emailController,
                    cursorColor: PrimaryColor,
                    decoration: InputDecoration(
                        icon: Icon(Icons.mail, color: PrimaryColor),
                        hintText: 'Email',
                        border: InputBorder.none),
                    validator: (value) {
                      if (value!.length == 0) {
                        return "Email tidak boleh kosong!";
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return ("Masukkan email yang valid!");
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      _emailController.text = value!;
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: PrimaryColor.withAlpha(50)),
                  child: TextFormField(
                    controller: _passwordController,
                    cursorColor: PrimaryColor,
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock, color: PrimaryColor),
                        hintText: 'Password',
                        border: InputBorder.none),
                    validator: (value) {
                      RegExp regex = new RegExp(r'^.{6,}$');
                      if (value!.isEmpty) {
                        return "Password tidak boleh kosong!";
                      }
                      if (!regex.hasMatch(value)) {
                        return ("Masukkan password yang valid min 6 karakter!");
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      _passwordController.text = value!;
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () async {
                    User? user = await loginUsingEmailPassword(
                        email: _emailController.text,
                        password: _passwordController.text,
                        context: context);
                    print(user);
                    if (user != null) {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => NavBar()));
                    }
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
                      'LOGIN',
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
    );
  }
}
