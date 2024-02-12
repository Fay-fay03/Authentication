import 'dart:math';

import 'package:auth/global/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auth/Features/user_auth/firebase_auth_implementation/firebase_auth_service.dart';
import 'package:auth/utils/approutes.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  FirebaseAuthService auth = FirebaseAuthService();
  RxBool isSignIn = false.obs;



@override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void signIn() async {
    isSignIn.value = true;
    String email = emailController.text;
    String password = passwordController.text;

    print("signin controler");

    User? user = await auth.signInWithEmailAndPasword(
      email,
      password,
    );
    isSignIn.value = false;
    print("user data: $user");

    if (user != null) {
      showToast(message: "User user is successfully signedin");
      Get.toNamed(AppRoutes.home);
    } else {
      //showToast(message: "some error occured");
    }
  }
}
