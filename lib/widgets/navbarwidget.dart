// navbar_widget.dart
import 'package:flutter/material.dart';

class NavBarWidget extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap; // Callback for item tap

  const NavBarWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_filled, size: 30),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.search, size: 30),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/pimages/add.png",
            height: 30,
          ),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/pimages/reel.png",
            height: 25,
          ),
          label: 'Reels',
        ),
        const BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 15,
            child: CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage("assets/pimages/dp1.jpg")),
          ),
          label: '',
        ),
      ],
    );
  }
}
