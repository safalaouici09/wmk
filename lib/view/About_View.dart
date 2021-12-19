import 'package:flutter/material.dart';
import 'package:wmk/Palette.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class AboutUS extends StatefulWidget {
  AboutUS({Key? key}) : super(key: key);

  @override
  State<AboutUS> createState() => _AboutUSState();
}

class _AboutUSState extends State<AboutUS> {
  @override
  Widget build(BuildContext context) {
    int _index = 0;
    return SafeArea(
        child: Scaffold(
      backgroundColor: CbackGround,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: CbackGround,
        title: Text("About Us"),
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          "Welcome to WMK-TECH, your number one source for all things Jobs. We are dedicated to giving you the very best, with a focus on quality, quantity, Jobs. Founded in 2020, WMK-TECH has come a long way from its beginnings in the world. When we first started out, this passion for finding jobs drove them to quit day job, do tons of research so that WMK-TECH can offer you competitive differentiator We now serve customers all over the world, and are thrilled that we are able to turn our passion into our own website. We hope you enjoy our products as much as We enjoy offering them to you. If you have any questions or comments, please don't hesitate to contact us. Sincerely.",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      )),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: CbackGround,
        selectedBackgroundColor: CbackGround,
        selectedItemColor: Colors.blue,
        onTap: (int val) => setState(() {
          _index = val;
          Navigator.pushNamed(context, '/$_index');
        }),
        currentIndex: _index,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.cases_outlined, title: 'Jobs'),
          FloatingNavbarItem(icon: Icons.location_on, title: 'Contact'),
          FloatingNavbarItem(icon: Icons.info_rounded, title: 'about us'),
        ],
      ),
    ));
  }
}
