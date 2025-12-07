import 'package:flutter/material.dart';

class Settingpage extends StatelessWidget {
  const Settingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.settings, size: 60, color: Colors.pink.shade300),
          const SizedBox(height: 20),
          Text(
            'الإعدادات',
            style: TextStyle(fontSize: 26, color: Colors.pink.shade300),
          ),
        ],
      ),
    );
  }
}