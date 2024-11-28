import 'package:flutter/material.dart';

import 'package:instagram/widgets/loginscreenwidget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        body: LoginScreenWidget(),
      ),
    );
  }
}
