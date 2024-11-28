import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:instagram/loginscreens/loginpage.dart';
import 'package:instagram/widgets/splashscreenwidget.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Get.off(() => const LoginScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Splashscreenwidget(),
    );
  }
}
