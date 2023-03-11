// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../Services/loginApi.dart';
import '../viewScreens/home.dart';
import '../widgets/textformField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool loading = false;
  bool hidePassword = false;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120.h,
            ),
            Text(
              "Hello",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60.sp),
            ),
            Text(
              "Login to your accunt",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
            SizedBox(
              height: 50.h,
            ),
            Form(
              key: formkey,
              child: Column(
                children: [
                  TextFormFieldW(
                    controller: usernameController,
                    hintText: "Username",
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.orange,
                    ),
                  ),
                  TextFormFieldW(
                    controller: passwordController,
                    obscure: hidePassword,
                    hintText: "Password",
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.orange,
                    ),
                    sufixIcon: InkWell(
                      onTap: () {
                        hidePassword = !hidePassword;
                        setState(() {});
                      },
                      child: hidePassword
                          ? const Icon(
                              Icons.visibility_off,
                              color: Colors.orange,
                            )
                          : const Icon(
                              Icons.visibility,
                              color: Colors.grey,
                            ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            GestureDetector(
              onTap: () {
                loading = loading;
                setState(() {
                  loading = true;
                });

                if (formkey.currentState!.validate()) {
                  loading = false;
                  LoginApi.Login(
                          usernameController.text, passwordController.text)
                      .then((value) {
                    // String username=value.;

                    Get.to(() => const HomeScreen());
                  });
                } else {
                  print("Failed");
                  loading = false;
                }
              },
              child: Container(
                  height: 50.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(30.r)),
                  child: Center(
                      child: loading == loading
                          ? Text("Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp))
                          : const CircularProgressIndicator())),
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}