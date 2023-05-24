import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:personal_portfolio/app/modules/home/views/home_view.dart';
import 'package:personal_portfolio/app/modules/login/views/login_view.dart';
import 'package:personal_portfolio/app/modules/signup/views/signup_view.dart';

import '../controllers/landing_page_controller.dart';

class LandingPageView extends GetView<LandingPageController> {
  const LandingPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/landing.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            side: BorderSide(color: Colors.white),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            )),
                        onPressed: () {
                          print('Landing Page');
                          Get.to(SignupView());
                          // Get.to(LoginView());
                        },
                        child: Text('Login/Signup',
                            style: TextStyle(fontSize: 19))),
                    TextButton(
                        onPressed: () {
                          Get.to(() => HomeView());
                          print("skip");
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
