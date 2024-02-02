
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auth/Features/user_auth/firebase_auth_implementation/firebase_auth_service.dart';
import 'package:auth/utils/approutes.dart';

class SignupController extends GetxController{
 late TextEditingController usernameController, emailController,passwordController = TextEditingController();

 FirebaseAuthService firebaseAuthService = FirebaseAuthService(); 

 @override

 void onInit() {
  super.onInit();
  usernameController = TextEditingController();
  emailController = TextEditingController();
  passwordController = TextEditingController();
 }

 @override

 void onClose(){
  super.onClose();
  usernameController = TextEditingController();
  emailController = TextEditingController();
   passwordController = TextEditingController();
 }

 
 void signUp() async{
  String username = usernameController.text;
  String email = emailController.text;
  String password = passwordController.text;

  User? user = await firebaseAuthService.signUpWithEmailAndPasword(email, password); 

  if(user != null){
    print("User user is successfully created");
    Get.toNamed(AppRoutes.home);
  }else{
    print("firebaseAuthService.$e");
  }
 }
}