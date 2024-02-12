import 'package:auth/Features/user_auth/user_auth_controller/login_controller.dart';
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
    return GetBuilder<LoginController>(
      builder: (LoginController) {
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
          body: SingleChildScrollView(
            child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 90, left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/account.png"),
                    const Text("Welcome Back! Login To Your Account",
                      style: TextStyle(color: blackColor,
                      fontSize: headingFontSize,
                      fontWeight: headingFontWeight
                    ),
                    ),
                     const SizedBox(height: 20,),
                    FormContainerWidget(
                      controller: LoginController.emailController,
                      hintText: "Email",
                      isPasswordField: false,
                    ),
                    const SizedBox(height: 20,),
                
                    FormContainerWidget(
                      controller: LoginController.passwordController,
                      hintText: "password",
                      isPasswordField: true,
                    ),
          
                    const SizedBox(height: 30,),
          
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          LoginController.signIn();
                         //Get.toNamed(AppRoutes.home);
                        },
                        child: Center(
                          child: LoginController.isSignIn.value ? 
                          const CircularProgressIndicator(color: whiteColor,)
                           :const Text("LOGIN",
                           style: TextStyle(
                            color: whiteColor,
                            fontSize: normalTextFontSize,
                            fontWeight: titleFontWeight
                            ),
                           )) 
                      ),
                    ),
                    const SizedBox(height: 40,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 1,
                          width: 140,
                          color: blackColor,
                        ),
                        const Text("OR",
                        style: TextStyle(
                          fontWeight: titleFontWeight,
                          color: blackColor,
                          fontSize: titleFontSize
                        ),
                        ),
                         Container(
                          height: 1,
                          width: 140,
                          color: blackColor,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset("assets/images/phone.png"),
                      ),         
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset("assets/images/google.png"),
                      )  
                      ],
                    ),
                    const SizedBox(height: 30,),

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
          ),
        );
      }
    );
  }
}