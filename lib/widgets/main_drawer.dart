import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget _buildMenuItem(IconData icon, String title, Function() handle) {
    return Column(
      children: [
        const Divider(
          height: 0,
        ),
        ListTile(
          onTap: handle,
          leading: Icon(icon),
          title: Text(title),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text(
              "MENU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          _buildMenuItem(Icons.home, "Bosh sahifa", () {}),
          _buildMenuItem(Icons.category, "Mahsulotlar", () {}),
        ],
      ),
    );
  }
}
