import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auth/utils/approutes.dart';
import 'package:auth/utils/constants.dart';
import '../widget/elevatedbutton.dart';
import '../widget/form_container_widget.dart';
import '../widget/textbutton.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(title: 
         const Center(
           child: Text("Login",
           style: TextStyle(color: whiteColor,
           fontWeight: titleFontWeight,
           fontSize: titleFontSize
                 ),
                 ),
         )),
      backgroundColor: whiteColor,
      body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Image.asset("assets/images/happy.png"),
               const SizedBox(height: 20,),
              const FormContainerWidget(
                hintText: "Email",
                isPasswordField: false,
              ),
              const SizedBox(height: 20,),
          
              const FormContainerWidget(
                hintText: "password",
                isPasswordField: true,
              ),

              const SizedBox(height: 30,),

              CustomButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.home);
                },
                text: "LOGIN",
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  //const SizedBox(width: 5,),
                  CustomTextButton(
                    onPressed:() {
                      Get.toNamed(AppRoutes.signUp);
                    } ,
                    text: "SignUp",
                  )
                ],
              )
            ],
          ),
          )),
    );
  }
}