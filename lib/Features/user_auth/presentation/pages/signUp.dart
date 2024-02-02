import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auth/Features/user_auth/user_auth_controller/signup_controller.dart';
import 'package:auth/utils/approutes.dart';
import 'package:auth/utils/constants.dart';
import '../widget/elevatedbutton.dart';
import '../widget/form_container_widget.dart';
import '../widget/textbutton.dart';

class SignUpPage extends StatelessWidget{

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  SignupController signupController = Get.find();
  
 SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(title: 
         const Center(
           child: Text("SignUp",
           style: TextStyle(color: whiteColor,
           fontWeight: titleFontWeight,
           fontSize: titleFontSize
                 ),
                 ),
         )),
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Image.asset("assets/images/happy.png"),
                 const SizedBox(height: 20,),
                 FormContainerWidget(
                  controller: usernameController,
                  hintText: "Username",
                  isPasswordField: false,
                ),
                const SizedBox(height: 10,),
      
                FormContainerWidget(
                  controller: emailController,
                  hintText: "Email",
                  isPasswordField: false,
                ),
                const SizedBox(height: 10,),
            
                 FormContainerWidget(
                  controller: passwordController,
                  hintText: "password",
                  isPasswordField: true,
                ),
      
                const SizedBox(height: 20,),
      
                CustomButton(
                  onPressed:() {
                    signupController.signUp();
                  },
                  text: "SignUp",
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    const SizedBox(width: 5,),
                    CustomTextButton(
                      onPressed:() {
                        Get.offNamed(AppRoutes.login);
                      } ,
                      text: "Login",
                    )
                  ],
                )
              ],
            ),
            )),
      ),
    );
  }
}