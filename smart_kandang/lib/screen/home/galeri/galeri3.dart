import 'package:flutter/material.dart';
import 'package:smart_kandang/constants.dart';

class Galeri3 extends StatelessWidget {
  const Galeri3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 320,
        decoration: BoxDecoration(
            color: NavColor, borderRadius: BorderRadius.circular(15)),
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/galeri3.jpg',
              height: 180,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }
}
