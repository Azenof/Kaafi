import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Utils/exports/data_paths.dart';


import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';
import '/Utils/exports/data_paths.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    final controller=Get.put(Login_Controller());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Layer 1: Logo
          Positioned(
            top: screenHeight * 0.1,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset("assets/image/logo/logo_black.png", height: screenHeight * 0.3),
            ),
          ),

          // Layer 2: Form Container
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              heightFactor: 0.6,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(194, 147, 232, 1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Auth_text_field(
                        obscure: false,
                        function: (value)=> Validator.validateEmail(value),
                        controller: controller.email,
                        hinttext: "Enter your email",
                        labeltext: "Email",
                        icondata: Icons.mail,
                      ),
                      const SizedBox(height: 16),
                      Auth_text_field(
                        function:(value)=> Validator.validatePassword(value),
                        labeltext: "Password",
                        controller: controller.password,
                        hinttext: "Enter your password",
                        obscure: true,
                        icondata: Icons.lock,
                      ),
                      const SizedBox(height: 24),
                      Custom_Auth_Button(
                        title: "Login",
                        function:()=>controller.signIn(controller.email.text.trim(),controller.password.text.trim()),
                      ),
                      const SizedBox(height: 12),
                      Custom_Auth_Button(
                        title: "Register",
                        function: () => Get.to(() => RegisterView()),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
