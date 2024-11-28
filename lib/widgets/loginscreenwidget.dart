import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/loginscreens/createnewaccount.dart';
import 'package:instagram/loginscreens/forgotpassword.dart';
import 'package:instagram/loginscreens/navigationbar.dart';

class LoginScreenWidget extends StatefulWidget {
  const LoginScreenWidget({super.key});

  @override
  State<LoginScreenWidget> createState() => _LoginScreenWidgetState();
}

class _LoginScreenWidgetState extends State<LoginScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height -
            MediaQuery.of(context).viewPadding.top,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
            child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text("English(India)"),
              const SizedBox(
                height: 90,
              ),
              SizedBox(
                  height: 70,
                  width: 70,
                  child: Image.asset("assets/pimages/logo.png")),
              const SizedBox(
                height: 90,
              ),
              TextFormField(
                decoration: InputDecoration(
                    label:
                        const Text("Username, email address or mobile number"),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    label: const Text("Password"),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.off(() => const Navigationbar());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff3797EF)),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const ForgotPasswordScreen());
                },
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              const Spacer(),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blue, width: 1.5),
                  ),
                  onPressed: () {
                    Get.to(() => const CreatenewaccountScreen());
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Create new account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
        )),
      ),
    );
  }
}
