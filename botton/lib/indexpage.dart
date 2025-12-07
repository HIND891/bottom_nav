import 'package:flutter/material.dart';
import 'homepage.dart';
import 'searchpage.dart';
import 'settingpage.dart';
import 'accountpage.dart';

class Indexpage extends StatefulWidget {
  const Indexpage({super.key});

  @override
  State<Indexpage> createState() => _IndexpageState();
}

class _IndexpageState extends State<Indexpage> {
  int _bottomNavbar = 0;

  final List<Widget> _pages = [
    Homepage(),
    Searchpage(),
    Settingpage(),
    Accountpage(),
  ];

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'الصفحة الرئيسية';
      case 1:
        return 'صفحة البحث';
      case 2:
        return 'الإعدادات';
      case 3:
        return 'الحساب';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_getTitle(_bottomNavbar)),
        backgroundColor: Colors.pink.shade300,
      ),
      body: IndexedStack(
        index: _bottomNavbar,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavbar,
        onTap: (index) {
          setState(() {
            _bottomNavbar = index;
          });
        },
        selectedItemColor: Colors.pink.shade400,
        unselectedItemColor: Colors.grey.shade600,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'البحث'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'الإعدادات'),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'الحساب'),
        ],
      ),
    );
  }
}