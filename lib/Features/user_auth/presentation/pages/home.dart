import 'package:auth/utils/approutes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Get.offNamed(AppRoutes.login);
            },
             child: const Icon(Icons.logout)
             )
        ],
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
         Text('Home Page'),
      ],)),
    );
  }
}