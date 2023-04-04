import 'package:ajiledakarv/screen/call/call.dart';
import 'package:ajiledakarv/screen/deplacement/deplacement.dart';
import 'package:ajiledakarv/screen/explorer/explore.dart';
import 'package:ajiledakarv/screen/mon_compte/compte.dart';
import 'package:flutter/material.dart';

class bnv extends StatefulWidget {
  const bnv({super.key});

  @override
  State<bnv> createState() => _bnvState();
}

class _bnvState extends State<bnv> {
  int _tabIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _tabIndex,
          children: [
            ExplorePage(),
            NumeroUtil(),
            Deplacement(),
            MonCompte(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        currentIndex: _tabIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          _bottomNavigationBarItem(
            icon: Icons.explore,
            label: 'Home',
          ),
          _bottomNavigationBarItem(
            icon: Icons.call,
            label: 'Num. Utiles',
          ),
          _bottomNavigationBarItem(
            icon: Icons.directions_car,
            label: 'Deplacement',
          ),
          _bottomNavigationBarItem(
            icon: Icons.account_circle,
            label: 'Mon compte',
          ),
        ],
      ),
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
