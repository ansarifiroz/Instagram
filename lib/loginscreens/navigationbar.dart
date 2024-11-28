// navigationbar.dart
import 'package:flutter/material.dart';
import 'package:instagram/homescreentabs/addpost.dart';
import 'package:instagram/homescreentabs/home.dart';
import 'package:instagram/homescreentabs/profile.dart';
import 'package:instagram/homescreentabs/reels.dart';
import 'package:instagram/homescreentabs/search.dart';
import 'package:instagram/widgets/navbarwidget.dart';

class Navigationbar extends StatefulWidget {
  const Navigationbar({super.key});

  @override
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  int currentIndex = 0;
  List<Widget> pages = [
    const HomeScreen(),
    const SearchScreen(),
    const AddPostScreen(),
    const ReelsScreen(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex], // Display the selected page
      bottomNavigationBar: NavBarWidget(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
