import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auth/utils/constants.dart';

import '../../../utils/approutes.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}):super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State <SplashScreen>{
  @override

  void initState() {
    Future.delayed(const Duration(seconds: 3), (){
      Get.offAllNamed(AppRoutes.login);
    });
    super.initState();
  }
  Widget build(BuildContext context){
    return const Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Text("AUTH & FIREBASE",
        style: TextStyle(
          color: blackColor, 
          fontSize: titleFontSize,
          fontWeight: titleFontWeight
          ),
        )
      ),
    );
  }
}