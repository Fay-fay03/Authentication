import 'dart:math';

import 'package:auth/global/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auth/Features/user_auth/firebase_auth_implementation/firebase_auth_service.dart';
import 'package:auth/utils/approutes.dart';

class SignupController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  FirebaseAuthService auth = FirebaseAuthService();
  bool isSignUp = false;



@override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void signUp() async {
    isSignUp = true;
    String username = usernameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    print("signup controler");

    User? user = await auth.signUpWithEmailAndPasword(
      email,
      password,
    );
    isSignUp  = false;
    print("user data: $user");

    if (user != null) {
      showToast(message: "user is successfully created");
      Get.toNamed(AppRoutes.home);
    } else {
      //showToast(message: "some error occured");
    }
  }
}
