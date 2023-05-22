import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:personal_portfolio/app/modules/signup/views/signup_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/signup.png'), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 310,
                      // width: 50,
                    ),
                    SizedBox(width: 10),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28.5,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            // Padding(

                            Form(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '   Email',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  TextField(
                                      decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color.fromRGBO(75, 75, 75, 0.2),
                                    prefixIconColor: Colors.deepPurple,
                                    hintText: 'Enter Your Mail',
                                    prefixIcon:
                                        Icon(Icons.mail_outline_rounded),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.deepPurple,
                                          width: 2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.deepPurple,
                                        width: 4,
                                      ),
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                  )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '   Password',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        filled: true,
                                        prefixIconColor: Colors.deepPurple,
                                        fillColor:
                                            Color.fromRGBO(75, 75, 75, 0.2),
                                        hintText: 'Enter your password',
                                        prefixIcon:
                                            Icon(Icons.lock_open_outlined),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.deepPurple,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 1, //<-- SEE HERE,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.deepPurple),
                                          overlayColor:
                                              MaterialStatePropertyAll(
                                                  Colors.purple),
                                          fixedSize: MaterialStatePropertyAll(
                                              Size(150, 50)),
                                          shape: MaterialStatePropertyAll(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)))),
                                      onPressed: () {},
                                      child: Text(
                                        'Login',
                                        style: TextStyle(fontSize: 18.5),
                                      )),
                                  Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('      Create An Account ?'),
                                        TextButton(
                                            onPressed: () {
                                              Get.to(() => SignupView());
                                            },
                                            child: Text(
                                              'SignUp',
                                              style: TextStyle(
                                                  color: Colors.deepPurple),
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
