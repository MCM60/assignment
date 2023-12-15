import 'package:flutter/material.dart';

class ResubalContainer extends StatelessWidget {
  final String Name;

  ResubalContainer({required this.Name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.maxFinite,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                offset: Offset(4.0, 4.0),
                blurRadius: 10,
                spreadRadius: 1.0)
          ]),
      child: Text(
        '$Name',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
