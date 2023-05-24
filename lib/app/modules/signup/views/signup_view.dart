import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:personal_portfolio/app/modules/login/views/login_view.dart';
import 'package:personal_portfolio/app/modules/signup/views/utils.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  SignupView({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final contactnumber = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  void dispose() {
    Get.delete<SignupController>();
    emailController.dispose();
    passwordController.dispose();
    contactnumber.dispose();
  }

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
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28.5,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            // Padding(

                            Form(
                              key: _formKey,
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
                                  TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      controller: emailController,
                                      validator: (Value) {
                                        if (Value!.isEmpty) {
                                          return "E-mail can't be null";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor:
                                            Color.fromRGBO(75, 75, 75, 0.2),
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
                                          borderRadius:
                                              BorderRadius.circular(50.0),
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
                                  TextFormField(
                                      keyboardType: TextInputType.text,
                                      controller: passwordController,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Enter Your Password';
                                        }
                                        return null;
                                      },
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
                                      )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '   Contact Number',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  TextField(
                                      keyboardType: TextInputType.phone,
                                      controller: contactnumber,
                                      decoration: InputDecoration(
                                        filled: true,
                                        prefixIconColor: Colors.deepPurple,
                                        fillColor:
                                            Color.fromRGBO(75, 75, 75, 0.2),
                                        hintText: 'Enter Your Contact Number',
                                        prefixIcon:
                                            Icon(Icons.phone_android_outlined),
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
                                      onPressed: () {
                                        print('Signup');
                                        print(emailController.text.toString());
                                        print(
                                            passwordController.text.toString());
                                        if (_formKey.currentState!.validate()) {
                                          _auth
                                              .createUserWithEmailAndPassword(
                                            email:
                                                emailController.text.toString(),
                                            password: passwordController.text
                                                .toString(),
                                          )
                                              .then((value) {
                                            emailController.clear();
                                            passwordController.clear();
                                            contactnumber.clear();
                                            // throw Exception('An error occurred');
                                            return null;
                                          }).onError((error, stackTrace) {
                                            Utils()
                                                .toastMessage(error.toString());
                                            print('hiii');
                                          });
                                        }
                                      },
                                      child: Text(
                                        'Sign Up',
                                        style: TextStyle(fontSize: 18.5),
                                      )),
                                  Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('      Already Have an account ?'),
                                        TextButton(
                                            onPressed: () {
                                              Get.to(() => LoginView());
                                            },
                                            child: Text(
                                              'Login',
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
