import 'package:app_filmes/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            'assets/images/background.png',
            width: Get.width,
            height: Get.height,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black45,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: Get.width * 0.9,
                  height: Get.height * 0.06,
                  child: SignInButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    text: "Entrar Com Google",
                    Buttons.Google,
                    onPressed: () => controller.login(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
