import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Titles extends StatelessWidget {
  final String title;
  Titles({required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                letterSpacing: 1,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
