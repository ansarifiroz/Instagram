import 'package:flutter/material.dart';

class Splashscreenwidget extends StatelessWidget {
  const Splashscreenwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 90,
            width: 90,
            child: Image.asset(
              "assets/pimages/logo.png",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 80,
              width: 250,
              child: Image.asset('assets/pimages/Instagram_logo.PNG'))
        ],
      ),
    );
  }
}
