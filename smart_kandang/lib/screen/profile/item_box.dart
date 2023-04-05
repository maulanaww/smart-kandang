import 'package:flutter/material.dart';
import 'package:smart_kandang/constants.dart';

class ItemBox extends StatelessWidget {
  final String itemName;
  final inputName;
  final double jarak;

  const ItemBox({
    super.key,
    required this.itemName,
    required this.inputName,
    required this.jarak,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: PrimaryColor),
            borderRadius: BorderRadius.circular(30),
            color: NavColor),
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Text(
              itemName,
              style: TextStyle(
                color: PrimaryColor,
              ),
            ),
            SizedBox(
              width: jarak,
            ),
            Text(
              ':',
              style: TextStyle(
                color: PrimaryColor,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              inputName,
              style: TextStyle(
                color: PrimaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
