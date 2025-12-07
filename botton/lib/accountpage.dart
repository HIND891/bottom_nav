import 'package:flutter/material.dart';

class Accountpage extends StatelessWidget {
  const Accountpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_box, size: 60, color: Colors.pink.shade300),
          const SizedBox(height: 20),
          Text(
            'الحساب',
            style: TextStyle(fontSize: 26, color: Colors.pink.shade300),
          ),
        ],
      ),
    );
  }
}